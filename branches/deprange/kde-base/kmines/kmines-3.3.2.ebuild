# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdegames
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KMines is a classic mine sweeper game"
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/libkdegames-3.3.1"
DEPEND="
$(need-version-range 3.3.1 $PV kde-base/libkdegames)"

KMEXTRACTONLY=libkdegames
KMCOPYLIB="libkdegames libkdegames"
