# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdegames
inherit kde-meta

DESCRIPTION="KMines is a classic mine sweeper game"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdegames-3.3.1"

KMEXTRACTONLY=libkdegames
KMCOPYLIB="libkdegames libkdegames"
