# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
KMMODULE=kresources
inherit kde-meta eutils

DESCRIPTION="Library used by konqueror's file manager mode as well as kdesktop and other kde apps"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkcal-$PV
	~kde-base/libkpimexchange-$PV
	~kde-base/libkdepim-$PV"
KMCOPYLIB="
	libkcal libkcal
	libkpimexchange libkpimexchange
	libkdepim libkdepim"
KMEXTRACTONLY="
	libkcal/
	libical/
	libkpimexchange/
	libkdepim/
	korganizer/
	kmail/kmailicalIface.h"
KMCOMPILEONLY="
	libical/src/libical/
	libical/src/libicalss/
	kaddressbook/
	knotes/"
	
src_compile() {
	export DO_NOT_COMPILE="libical kaddressbook knotes" && kde-meta_src_compile myconf configure
	# generate "ical.h"
	cd ${S}/libical/src/libical && make ical.h
	# generate "icalss.h"
	cd ${S}/libical/src/libicalss && make icalss.h
	
	cd ${S}/kaddressbook/interfaces && make libkabinterfaces.la
	# generate "libkabcommon.la"
	cd ${S}/kaddressbook && make libkabcommon.la
	cd ${S}/knotes && make libknotes.la
	
	kde-meta_src_compile "make"
}