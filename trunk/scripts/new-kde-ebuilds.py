#!/usr/bin/python
import sys, os, os.path, re, string, shutil, copy, portage

if len(sys.argv) < 5:
	print ("Usage: " + sys.argv[0] + " <new version> <category dir> <MAXKDEVER substitute variable> <list of changed packages>\n")
	sys.exit (1)

# ===============
# FUNCTIONS START
# ===============

# returns all extant versions of an ebuild (as a tuple of version strings)
reEbuild = re.compile ("^.*\.ebuild$")
def extantVersions (basedir):
	if basedir[-1] == '/':
		basedir = basedir[:-1]
	files = os.listdir (basedir)
	ebuilds = filter (reEbuild.match, files)
	name = os.path.basename (basedir)
	versions = [re.sub ("(" + name + "-)|(\.ebuild$)", "", ebuild) for ebuild in ebuilds]
	return versions

# wraps portage.best()
def bestVersion (versions):
	bestver = portage.best (["foo-" + version for version in versions])
	return bestver[4:]
	
# compares two versions
def myvercmp (first, second):
	if first == second:
		return 0
	elif bestVersion((first, second)) == first:
		return 1
	else:
		return -1

# generates a new deprange parameter string.
# accepts a dictionary of the ebuild versions that exist (including the version being created),
# the version of the ebuild that has the dependency, and the name 

# =====================
# GLOBAL SECTION STARTS
# =====================

# parse params
newver = sys.argv[1]
basedir = sys.argv[2]
maxvervar = sys.argv[3]
updatedpackages = sys.argv[4:]

# create listing of package dirs
packages = os.listdir (basedir)
for nonpackage in ("CVS", ".svn"):
	try:
		packages.remove (nonpackage)
	except:
		pass

# create map of existing package versions
packagevers = {}
for package in packages[:]:
	versions = extantVersions (basedir + "/" + package)
	
	# if no actual ebuild files exist inside the package directory, extantVersions()
	# returns an empty list
	if len (versions) > 0:
		packagevers[package] = versions
	else:
		sys.stderr.write ("Warning: package directory " + package + " contains no ebuilds\n")
		packages.remove (package)

# make sure we're not being asked to create new packages
for package in updatedpackages[:]:
	if not packagevers.has_key (package):
		sys.stderr.write ("Cannot update package " + package + ", no existing version found\n")
		updatedpackages.remove (package)

# list the versions that will now exist (for dependency creation)
newpackagevers = copy.deepcopy (packagevers)
for package in updatedpackages:
	newpackagevers[package] += [newver]

# for every package to be updated
reDeprange = re.compile ("\$\(deprange +([\$a-zA-Z0-9.]+) +([\$a-zA-Z0-9.]+) +(.*?)\)")
for package in updatedpackages:
	if package not in packages:
		sys.stderr.write ("package " + package + " cannot be updated because it does not exist\n")
	packagedir = basedir + "/" + package

	# determine ebuild to use as base
	lastver = bestVersion (packagevers[package])
	lastebuild = packagedir + "/" + package + "-" + lastver + ".ebuild"
	newebuild = packagedir + "/" + package + "-" + newver + ".ebuild"
	
	# TODO check for versioned file references in the ebuild and warn user
	
	# open, read old ebuild
	lastfile = file (lastebuild, "r")
	ebuildtext = lastfile.read ()
	lastfile.close ()
	
	# update global ebuild settings: maxvervar
	ebuildtext = re.sub (maxvervar + "=.*", maxvervar + "=$PV", ebuildtext)
	
	# for each deprange call in the ebuild (assumes a deprange call has a single package parameter)
	# note that since we change ebuildtext on each iteration, we can't access match.start() directly
	# and have to use string.replace()
	for match in reDeprange.finditer (ebuildtext):
		matchstr = match.group (0)
		depcatpkg = match.group (3)
		deppkg = depcatpkg[depcatpkg.find ("/") + 1:]
		if deppkg not in packages:
			sys.stderr.write ("dependency " + depcatpkg + " of package " + package + " cannot be updated because it does not exist\n")
		
		bestdep = bestVersion (newpackagevers[deppkg])
		if bestdep == newver:
			newdep = "$(deprange $PV $" + maxvervar + " " + depcatpkg + ")"
		else:
			newdep = "$(deprange " + bestdep + " $PV " + depcatpkg + ")"
		ebuildtext = ebuildtext.replace (matchstr, newdep)
	
	# write ebuild back
	newfile = file (newebuild, "w")
	newfile.write (ebuildtext)
	newfile.close ()

# for every package that wasn't updated
for package in packages:
	if package not in updatedpackages:
		packagedir = basedir + "/" + package
		lastver = bestVersion (packagevers[package])
		lastebuild = packagedir + "/" + package + "-" + lastver + ".ebuild"
		
		# open, read old ebuild
		lastfile = file (lastebuild, "r")
		ebuildtext = lastfile.read ()
		lastfile.close ()
	
		# update global ebuild settings: maxvervar
		ebuildtext = re.sub (maxvervar + "=.*", maxvervar + "=" + newver, ebuildtext)
	
		# for each deprange call in the ebuild (assumes a deprange call has a single package parameter)
		# note that since we change ebuildtext on each iteration, we can't access match.start() directly
		# and have to use string.replace()
		for match in reDeprange.finditer (ebuildtext):
			matchstr = match.group (0)
			fromver = match.group (1)
			tover = match.group (2)
			depcatpkg = match.group (3)
			deppkg = depcatpkg[depcatpkg.find ("/") + 1:]
			if deppkg not in packages:
				sys.stderr.write ("dependency " + depcatpkg + " of package " + package + " cannot be updated because it does not exist\n")
			
			# leave fromver untouched; replace tover with a reference to maxvervar,
			# whose value we changed to newver. note that sometimes fromver != lastver
			# (ie fromver != "$PV"), eg when demanding a minimal revision.
			newdep = "$(deprange " + fromver + " $" + maxvervar + " " + depcatpkg + ")"
			ebuildtext = ebuildtext.replace (matchstr, newdep)
			
		# write back
		lastfile = file (lastebuild, "w")
		lastfile.write (ebuildtext)
		lastfile.close ()
