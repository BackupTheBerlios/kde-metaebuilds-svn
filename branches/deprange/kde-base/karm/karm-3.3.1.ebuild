# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE Time tracker tool"
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/libkcal-$PV
	~kde-base/libkdepim-$PV"
DEPEND="$(need-version-range $PV $MAXKDEVER kde-base/libkcal)
$(need-version-range $PV $MAXKDEVER kde-base/libkdepim)"

KMCOPYLIB="
	libkcal libkcal
	libkdepim libkdepim"
KMEXTRACTONLY="
	libkcal/
	libkdepim/"
