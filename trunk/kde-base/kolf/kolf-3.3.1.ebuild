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
	if [ ! `use arts` ]; then
		eerror "kolf needs the USE=\"alsa\" enabled. You need also that the kdelibs are compiled with this use enabled too."
		die	
	fi
}
