# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/eclass/kde-dist.eclass,v 1.58 2004/08/19 14:24:01 caleb Exp $
#
# Author Dan Armak <danarmak@gentoo.org>
# Simone Gotti <simone.gotti@email.it>
#
# This is the kde-meta eclass which supports broken-up kde-base packages.

inherit kde
ECLASS=kde-meta
INHERITED="$INHERITED $ECLASS"
IUSE="$IUSE usepackagedmakefiles packagemakefiles"

# only broken-up ebuilds can use this eclass
if [ -z "$KMNAME" ]; then
	die "kde-meta.eclass inherited but KMNAME not defined - broken ebuild"
fi

myPN="$KMNAME"
myP="$myPN-$PV"
# is this a kde-base ebuild, vs eg koffice
case "$myPN" in kde-i18n|arts|kdeaccessibility|kdeaddons|kdeadmin|kdeartwork|kdebase|kdebindings|kdeedu|kdegames|kdegraphics|kdelibs|kdemultimedia|kdenetwork|kdepim|kdesdk|kdetoys|kdeutils|kdewebdev|kdelibs-apidocs)
	debug-print "$ECLASS: KDEBASE ebuild recognized"
	export KDEBASE="true"
	;;
esac

# BEGIN adapted from kde-dist.eclass, code for older versions removed for cleanness
if [ "$KDEBASE" = "true" ]; then
	# kde 3.1 prereleases have tarball versions of 3.0.6 ff
	unset SRC_URI
	case "$PV" in
		3.3.0)		SRC_PATH="stable/3.3/src/${myP}.tar.bz2" ;;
		3*)			SRC_PATH="stable/${myPV}/src/${myP}.tar.bz2" ;;
		5)			SRC_URI="" # cvs ebuilds, no SRC_URI needed
					debug-print "$ECLASS: cvs detected, SRC_URI left empty" ;;
		*)			debug-print "$ECLASS: Error: unrecognized version ${myPV}, could not set SRC_URI" ;;
	esac
	[ -n "$SRC_PATH" ] && SRC_URI="$SRC_URI mirror://kde/$SRC_PATH"
	debug-print "$ECLASS: finished, SRC_URI=$SRC_URI"
	
	need-kde $PV
	
	DESCRIPTION="KDE ${myPV} - "
	HOMEPAGE="http://www.kde.org/"
	LICENSE="GPL-2"
	SLOT="$KDEMAJORVER.$KDEMINORVER"
fi
# END adapted from kde-dist.eclass

# prepackaged makefiles for broken-up ebuilds. Ebuild can define KM_MAKEFILESREV to be >=1 to
# use a newer tarball without increasing the ebuild revision.
MAKEFILESTARBALL="$PN-$PVR-${KM_MAKEFILESREV:-0}-makefiles.tar.bz2"
SRC_URI="$SRC_URI usepackagedmakefiles? ( mirror://gentoo/$MAKEFILESTARBALL )"

# TODO FIX: Temporary place for code common to all ebuilds derived from any one metapackage.

# kdebase: all configure.in's talk about java. Need to investigate which ones 
# actually need it.
if [ "$KMNAME" == "kdebase" ]; then
	IUSE="$IUSE java"
	DEPEND="java? ( || ( virtual/jdk virtual/jre ) )"
fi

# TODO FIX ends

# The following code adds support for broken-up kde-base-derived ebuilds, e.g. a separate
# kmail ebuild that still uses the big kdepim tarball. KM is short for 'kde meta'.
# Set the following variables in the ebuild. Only KMNAME must be set, the rest are optional.
# A directory or file can be a path with any number of components (eg foo/bar/baz.h). 
# Do not include the same item in more than one of KMMODULE, KMMEXTRA, KMCOMPILEONLY, KMEXTRACTONLY, KMCOPYLIB.
#
# KMNAME: name of the metapackage (eg kdebase, kdepim). Must be set before inheriting this eclass
# (unlike the other parameters here), since it affects $SRC_URI.
# KMMODULE: Defaults to $PN. Specify one subdirectory of KMNAME. Is treated exactly like items in KMEXTRA.
# Fex., the ebuild name of kdebase/l10n is kdebase-l10n, because just 'l10n' would be too confusing.
# KMNODOCS: unless set to "true", 'doc/$KMMODULE' is added to KMEXTRA. Set for packages that don't have docs.
# KMEXTRA, KMCOMPILEONLY, KMEXTRACTONLY: specify files/dirs to extract, compile and install. $KMMODULE
# is added to $KMEXTRA automatically. So is doc/$KMMODULE (unless $KMNODOCS==true).
# Makefiles are created automagically to compile/install the correct files. Observe these rules:
# - Don't specify the same file in more than one of the three variables.
# - When using KMEXTRA, remember to add the doc/foo dir for the extra dirs if one exists.
# - KMEXTRACTONLY take effect over an entire directory tree, you can override it defining 
# KMEXTRA, KMCOMPILEONLY for every subdir that must have a different behavior.
# eg. you have this tree:
# foo/bar
# foo/bar/baz1
# foo/bar/baz1/taz
# foo/bar/baz2
# If you define:
# KMEXTRACTONLY=foo/bar and KMEXTRA=foo/bar/baz1
# then the only directory compiled will be foo/bar/baz1 and not foo/bar/baz1/taz (also if it's a subdir of a KMEXTRA) or foo/bar/baz2
#
# IMPORTANT!!! you can't define a KMCOMPILEONLY SUBDIR if its parents are defined as KMEXTRA or KMMODULE. or it will be installed anywhere. To avoid this probably are needed some chenges to the generated Makefile.in.
#
# KMCOPYLIB: Contains an even number of $IFS (i.e. whitespace) -separated words. 
# Each two consecutive words, libname and dirname, are considered. symlinks are created under $S/$dirname
# pointing to $PREFIX/lib/libname*.

# create a full path vars, and remove ALL the endings "/"

function create_fullpaths() {
	for item in $KMMODULE; do
		tmp=`echo $item | sed -e "s/\/*$//g"`
		KMMODULEFULLPATH="$KMMODULEFULLPATH ${S}/$tmp"
	done
	for item in $KMEXTRA; do
		tmp=`echo $item | sed -e "s/\/*$//g"`
		KMEXTRAFULLPATH="$KMEXTRAFULLPATH ${S}/$tmp"
	done
	for item in $KMCOMPILEONLY; do
		tmp=`echo $item | sed -e "s/\/*$//g"`
		KMCOMPILEONLYFULLPATH="$KMCOMPILEONLYFULLPATH ${S}/$tmp"
	done
	for item in $KMEXTRACTONLY; do
		tmp=`echo $item | sed -e "s/\/*$//g"`
		KMEXTRACTONLYFULLPATH="$KMEXTRACTONLYFULLPATH ${S}/$tmp"
	done
}

# $1 = directory
# $2 = parameter $isextractonly, so we can know if the parent dir was defined as KMEXTRACTONLY
function change_makefiles() {
	debug-print-function $FUNCNAME $*
	local dirlistfullpath dirlist directory isextractonly

	cd $1
	debug-print "We are in `pwd`"
	
	# check if the dir is defined as KMEXTRACTONLY or if it was defined is KMEXTRACTONLY in the parent dir, this is valid only if it's not also defined as KMMODULE, KMEXTRA or KMCOMPILEONLY. They will ovverride KMEXTRACTONLY, but only in the current dir.
	isextractonly="false"
	if ( hasq "$1" $KMEXTRACTONLYFULLPATH && ! hasq "$1" $KMMODULEFULLPATH $KMEXTRAFULLPATH $KMCOMPILEONLYFULLPATH ) || ( [ $2 = "true" ] && ! hasq "$1" $KMMODULEFULLPATH $KMEXTRAFULLPATH $KMCOMPILEONLYFULLPATH ); then
		isextractonly="true"
	fi
	debug-print "isextractonly = $isextractonly"
	
	dirlistfullpath=
	for item in *; do
		if [ -d $item ] && [ ! $item = "CVS" ] && [ ! "$S/$item" = "$S/admin" ]; then
			# add it to the dirlist, with the FULL path and an ending "/"
			dirlistfullpath="$dirlistfullpath ${1}/${item}"
		fi
	done
	debug-print "dirlist = $dirlistfullpath"
	
	for directory in $dirlistfullpath; do
		
		if ( hasq "$1" $KMEXTRACTONLYFULLPATH || [ $2 = "true" ] ); then 
			change_makefiles $directory 'true'
		else
			change_makefiles $directory 'false'
		fi
		# come back to our dir
		cd $1
	done
	
	cd $1
	debug-print "Come back to `pwd`"
	debug-print "dirlist = $dirlistfullpath"
	if [ $isextractonly = "true" ] || [ ! -f Makefile.am ] ; then
		# if this is a latest subdir 
		if [ -z "$dirlistfullpath" ]; then
			debug-print "dirlist is empty => we are in the latest subdir"
			echo 'all:' > Makefile.am
			echo 'install:' >> Makefile.am
			echo '.PHONY: all' >> Makefile.am
		else # it's not a latest subdir
			debug-print "We aren't in the latest subdir"
			# remove the ending "/" and the full path"
			for directory in $dirlistfullpath; do
				directory=${directory%/}
				directory=${directory##*/}
				dirlist="$dirlist $directory"
			done
			echo "SUBDIRS=$dirlist" > Makefile.am
		fi
	fi
}

function kde-meta_src_unpack() {
	debug-print-function $FUNCNAME $*

	# Overridable module (subdirectory) name, with default value
	if [ -z "$KMMODULE" ]; then
		KMMODULE=$PN
	fi

	# Unless disabled, docs are also extracted, compiled and installed
	DOCS=""
	if [ "$KMNODOCS" != "true" ]; then
		DOCS="doc/$KMMODULE"
	fi
	
	# Extract everything necessary
	cd $WORKDIR
	extractlist=""
	for item in admin Makefile.am Makefile.am.in configure.in.in configure.in.bot \
				AUTHORS COPYING INSTALL README \
				$KMMODULE $KMEXTRA $KMCOMPILEONLY $KMEXTRACTONLY $DOCS
	do
		extractlist="$extractlist $myP/$item"
	done
	tar -xjpf $DISTDIR/${myP}.tar.bz2 $extractlist
	# Default $S is based on $P not $myP; rename the extracted dir to fit $S
	mv $myP $P
	
	# Copy over KMCOPYLIB items
	libname=""
	for x in $KMCOPYLIB; do
		if [ "$libname" == "" ]; then
		libname=$x
		else
		dirname=$x
		cd $S
		mkdir -p ${dirname}
		cd ${dirname}
		ln -s ${PREFIX}/lib/${libname}* .
		libname=""
		fi
	done

	# apply any patches
	kde_src_unpack autopatch

	# allow usage of precreated makefiles, and/or packaging of the makefiles we create.
	if useq usepackagedmakefiles; then
		echo ">>> Using pregenerated makefile templates"
		cd $WORKDIR
		tar -xjf $DISTDIR/$MAKEFILESTARBALL
	else
		# Create Makefile.am files
		create_fullpaths
		change_makefiles $S "false"
		if useq packagemakefiles; then
			make -f admin/Makefile.common || die "Failed to create makefile templates"
			cd $WORKDIR
			/bin/tar -cjpf $T/$MAKEFILESTARBALL  $P/stamp-h.in $P/configure.in* \
				`find $P -name Makefile\*` $P/config.h.in $P/acinclude.m4 $P/aclocal.m4 \
				$P/configure $P/configure.files $P/subdirs
			echo ">>> Saved generated makefile templates in $T/$MAKEFILESTARBALL"
		fi
	fi
}

function kde-meta_src_compile() {
	debug-print-function $FUNCNAME $*

	# kdebase: all configure.in's talk about java. Need to investigate which ones 
	# actually need it.
	if [ "$KMNAME" == "kdebase" ]; then
		if use java ; then
			if has_version virtual/jdk ; then
				myconf="$myconf --with-java=$(java-config --jdk-home)"
			else
				myconf="$myconf --with-java=$(java-config --jre-home)"
			fi
		else
			myconf="$myconf --without-java"
		fi
	fi
	
	# confcache support. valid only for my (danarmak's) port of stuart's confcache to portage .51,
	# not for stuart's orig version or ferringb's ebuild-daemon version.
	# this could be replaced by just using econf, but i don't want to make that change in kde.eclass
	# just yet. This way is more modular.
	callsections="$*"
	[ -z "$callsections" -o "$callsections" == "all" ] && callsections="myconf configure make"
	for section in $callsections; do
		debug-print "$FUNCNAME: now in section $section"
		if [ "$section" == "configure" ]; then
			# don't log makefile.common stuff in confcache
			[ ! -f "Makefile.in" ] && make -f admin/Makefile.common
 			confcache_start
			myconf="$EXTRA_ECONF $myconf"
		fi
		kde_src_compile $section
		if [ "$section" == "configure" ]; then
			confcache_stop
		fi
	done
}

function kde-meta_src_install() {
	debug-print-function $FUNCNAME $*
	
	if [ "$1" == "" ]; then
		kde-meta_src_install make dodoc
	fi
	while [ -n "$1" ]; do
		case $1 in
		    make)
				for dir in $KMMODULE $KMEXTRA $DOCS; do
					if [ -d $S/$dir ]; then 
						cd $S/$dir
						make DESTDIR=${D} destdir=${D} install || die
					fi
				done
				;;
		    dodoc)
				kde_src_install dodoc
				;;
		    all)
				kde-meta_src_install make dodoc
				;;
		esac
		shift
	done
}	

EXPORT_FUNCTIONS src_unpack src_compile src_install

