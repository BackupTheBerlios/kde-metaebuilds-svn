# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
inherit kde-meta eutils

DESCRIPTION="Personal alarm message, command and email scheduler for KDE"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdepim-$PV
	~kde-base/libkdenetwork-$PV
	~kde-base/libkcal-$PV
	~kde-base/kalarmd-$PV"
KMCOPYLIB="
	libkcal libkcal
	libkdenetwork libkdenetwork
	libkalarmd kalarmd
	libkdepim libkdepim"
KMEXTRACTONLY="
	libical/
	libkdepim/
	libkdenetwork/"
KMCOMPILEONLY="
	kalarmd/
	libical/src/libical/
	libical/src/libicalss/"

src_compile() {
	export DO_NOT_COMPILE="kalarmd libical" && kde-meta_src_compile myconf configure
	# generate "alarmdaemoniface_stub.h"
	cd ${S}/kalarmd && make alarmdaemoniface_stub.h
	# generate "alarmguiiface_stub.h"
	cd ${S}/kalarmd && make alarmguiiface_stub.h
	# generate "ical.h"
	cd ${S}/libical/src/libical && make ical.h
	# generate "icalss.h"
	cd ${S}/libical/src/libicalss && make icalss.h
	
	kde-meta_src_compile make
}