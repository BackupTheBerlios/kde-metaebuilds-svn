# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdegames
inherit kde-meta

DESCRIPTION="KDE Minigolf Game"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdegames-$PV"

KMEXTRACTONLY=libkdegames
KMCOPYLIB="libkdegames libkdegames"

pkg_setup() {
	if ! useq arts; then
		eerror "kolf needs the USE=\"arts\" enabled and also the kdelibs compiled with the USE=\"arts\" enabled"
		die	
	fi
}
