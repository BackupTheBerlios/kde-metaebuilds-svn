# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
inherit kde-meta eutils

DESCRIPTION="KDE PIM exchange library"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkcal-$PV"
KMCOPYLIB="libkcal libkcal"
# libkcal is installed because a lot of headers are needed, but it don't have to be compiled
KMEXTRACTONLY="
	libkcal/
	libical/"
KMCOMPILEONLY="
	libical/src/libical/
	libical/src/libicalss/"
	
src_compile() {
	export DO_NOT_COMPILE="libical" && kde-meta_src_compile myconf configure
	# generate "ical.h"
	cd ${S}/libical/src/libical && make ical.h
	# generate "icalss.h"
	cd ${S}/libical/src/libicalss && make icalss.h
	
	kde-meta_src_compile make
}