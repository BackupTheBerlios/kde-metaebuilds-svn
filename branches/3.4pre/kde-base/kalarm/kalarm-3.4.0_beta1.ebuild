# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="Personal alarm message, command and email scheduler for KDE"
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/libkdepim-$PV
	~kde-base/libkdenetwork-$PV
	~kde-base/libkcal-$PV"
DEPEND="$(deprange $PV $MAXKDEVER kde-base/libkdepim)
$(deprange $PV $MAXKDEVER kde-base/libkdenetwork)
$(deprange $PV $MAXKDEVER kde-base/libkmime)
$(deprange $PV $MAXKDEVER kde-base/libkpimidentities)
$(deprange $PV $MAXKDEVER kde-base/libkcal)"

KMCOPYLIB="
	libkcal libkcal
	libkdepim libkdepim
	libkmime libkmime
	libkpimidentities libkpimidentities"
KMEXTRACTONLY="
	libkcal/libical
	libkdepim/
	libkdenetwork/
	libkpimidentities/
	libkmime/"
KMCOMPILEONLY="
	libkcal/libical/src/libical/
	libkcal/libical/src/libicalss/"

src_compile() {
	export DO_NOT_COMPILE="libkcal" && kde-meta_src_compile myconf configure
	# generate "ical.h"
	cd ${S}/libkcal/libical/src/libical && make ical.h
	# generate "icalss.h"
	cd ${S}/libkcal/libical/src/libicalss && make icalss.h
	
	kde-meta_src_compile make
}