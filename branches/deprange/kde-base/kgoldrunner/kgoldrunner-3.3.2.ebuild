# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdegames
inherit kde-meta

DESCRIPTION="KDE: KGoldrunner is a game of action and puzzle solving"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdegames-3.3.1"

KMEXTRACTONLY=libkdegames
KMCOPYLIB="libkdegames libkdegames"
