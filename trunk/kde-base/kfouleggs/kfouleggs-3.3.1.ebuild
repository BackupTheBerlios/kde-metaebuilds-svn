# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdegames
inherit kde-meta

DESCRIPTION="KDE games: KFoulEggs is an adaptation of the well-known (at least in Japan) PuyoPuyo game"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdegames-$PV ~kde-base/libksirtet-$PV"

KMEXTRACTONLY=libkdegames
KMCOMPILEONLY=libksirtet
KMCOPYLIB="libkdegames libkdegames"
