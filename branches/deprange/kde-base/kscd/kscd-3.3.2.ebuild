# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE CD player"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkcddb-3.3.1"
KMCOPYLIB="libkcddb libkcddb"
KMEXTRACTONLY="
	libkcddb/
	mpeglib_artsplug/configure.in.in"