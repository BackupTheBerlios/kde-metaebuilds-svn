# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdeutils
inherit kde-meta eutils

DESCRIPTION="KHexEdit - KDE hex editor"
KEYWORDS="~x86"
IUSE=""

src_unpack() {
	kde-meta_src_unpack
	# I CANNOT understand why the make -f admin/Makefile.common reports:
	#
	# *** Creating Makefile templates
	# SUBDIRS: variable `TOPSUBDIRS' is used but `TOPSUBDIRS' is undefined
	# make: *** [cvs] Error 1
	#
	# This seems to be caused, (I don't know why) by khexedit/configure.in.in
	# AND when I rewrite the same EQUAL file by hand this doesn't happens... :(
	# strange not visible chars???
	
	# With this strange unuseful things it works. bah!
	echo "AC_LANG_SAVE" > $S/khexedit/configure.in.in
	echo "AC_LANG_C" >> $S/khexedit/configure.in.in
	echo "AC_C_BIGENDIAN" >> $S/khexedit/configure.in.in
	echo "AC_LANG_RESTORE" >> $S/khexedit/configure.in.in
}