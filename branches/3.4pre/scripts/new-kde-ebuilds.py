#!/usr/bin/python
import sys, os, os.path, re, string, shutil, copy, portage

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

# =====================
# GLOBAL SECTION STARTS
# =====================

# parse params
newver = None
stopver = None
basedir = None
maxvervar = None
updatedpackages = []
basename = sys.argv.pop (0) # remove argv[0]
while (len (sys.argv) > 0):
	param = sys.argv.pop (0)
	if param == "-newver":
		newver = sys.argv.pop (0)
	elif param == "-stopver":
		stopver = sys.argv.pop (0)
	elif param == "-cat":
		basedir = sys.argv.pop (0)
	elif param == "-maxvervar":
		maxvervar = sys.argv.pop (0)
	else:
		updatedpackages.append (param)

if (newver == None) or (stopver == None) or (basedir == None) or (maxvervar == None):
	print ("Usage: " + basename + " -newver n -stopver s -cat c -maxvervar m <list of changed packages>\n" +
		"\tn\tThe new version to create\n" +
		"\ts\tThe greatest version that shouldn't be considered as an ancestor to the new one\n" +
		"\t\t(e.g. when creating 3.4.0, spcify stopver=3.3.99)\n" +
		"\tc\tCategory directory to process\n" +
		"\tm\tName of the 'maximum version' variable - MAXKDEVER for kde-base, MAXKOFFICEVER for app-office\n"
	);
	sys.exit (1)

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
	if len (versions) == 0:
		sys.stderr.write ("Warning: package directory " + package + " contains no ebuilds\n")
	
	# remove versions <= stopver
	# e.g. when creating the first 3.4 ebuilds, we'll specify stopver=3.3.99, so that the newest
	# 3.3.x ebuilds' MAXKDEVER won't be changed to 3.4.
	
	for version in versions[:]:
		if myvercmp (version, stopver) <= 0:
			versions.remove (version)
	
	# if no actual ebuild files exist inside the package directory, extantVersions()
	# returns an empty list
	if len (versions) > 0:
		packagevers[package] = versions
	else:
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
		else:
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
