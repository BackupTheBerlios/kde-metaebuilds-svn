# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdegames
inherit kde-meta

DESCRIPTION="KSirtet is an adaptation of the well-known Tetris game"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdegames-$PV"

KMEXTRACTONLY=libkdegames
KMCOMPILEONLY=libksirtet
KMCOPYLIB="libkdegames libkdegames"
