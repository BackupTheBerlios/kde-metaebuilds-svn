# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE pda synchronizer"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(deprange $KM_DEPRANGE  kde-base/libkcal)"
OLDDEPEND="~kde-base/libkcal-$PV"

KMCOPYLIB="
	libkcal libkcal"
KMEXTRACTONLY="
	libkcal/"
