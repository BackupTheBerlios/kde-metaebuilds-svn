# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdegames
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE: KGoldrunner is a game of action and puzzle solving"
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/libkdegames-3.3.1"
DEPEND="
$(deprange 3.3.1 $PV kde-base/libkdegames)"


KMEXTRACTONLY=libkdegames
KMCOPYLIB="libkdegames libkdegames"
