# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE CD player"
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/libkcddb-3.3.1"
DEPEND="
$(deprange $PV $MAXKDEVER kde-base/libkcddb)"

KMCOPYLIB="libkcddb libkcddb"
KMEXTRACTONLY="
	libkcddb/
	mpeglib_artsplug/configure.in.in"