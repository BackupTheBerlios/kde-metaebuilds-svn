# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
KMMODULE=kresources
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE PIM groupware plugin collection"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(need-version-range $PV $MAXKDEVER kde-base/libkcal)
$(need-version-range $PV $MAXKDEVER kde-base/libkpimexchange)
$(need-version-range $PV $MAXKDEVER kde-base/libkdepim)"
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