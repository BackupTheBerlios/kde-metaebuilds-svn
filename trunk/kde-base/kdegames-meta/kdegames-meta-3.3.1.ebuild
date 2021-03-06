# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.1

inherit kde-functions
DESCRIPTION="kdegames - merge this to pull in all kdepim-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
$(deprange $PV $MAXKDEVER kde-base/ktuberling)
arts? ( $(deprange $PV $MAXKDEVER kde-base/kolf) )
$(deprange $PV $MAXKDEVER kde-base/kpat)
$(deprange $PV $MAXKDEVER kde-base/katomic)
$(deprange $PV $MAXKDEVER kde-base/kbounce)
$(deprange $PV $MAXKDEVER kde-base/kbattleship)
$(deprange $PV $MAXKDEVER kde-base/ksame)
$(deprange $PV $MAXKDEVER kde-base/ktron)
$(deprange $PV $MAXKDEVER kde-base/kwin4)
$(deprange $PV $MAXKDEVER kde-base/lskat)
$(deprange $PV $MAXKDEVER kde-base/kgoldrunner)
$(deprange $PV $MAXKDEVER kde-base/kshisen)
$(deprange $PV $MAXKDEVER kde-base/ksirtet)
$(deprange $PV $MAXKDEVER kde-base/konquest)
$(deprange $PV $MAXKDEVER kde-base/kspaceduel)
$(deprange $PV $MAXKDEVER kde-base/kbackgammon)
$(deprange $PV $MAXKDEVER kde-base/kasteroids)
$(deprange $PV $MAXKDEVER kde-base/klines)
$(deprange $PV $MAXKDEVER kde-base/kmines)
$(deprange $PV $MAXKDEVER kde-base/kpoker)
$(deprange $PV $MAXKDEVER kde-base/ksnake)
$(deprange $PV $MAXKDEVER kde-base/kreversi)
$(deprange $PV $MAXKDEVER kde-base/kblackbox)
$(deprange $PV $MAXKDEVER kde-base/ksmiletris)
$(deprange $PV $MAXKDEVER kde-base/kmahjongg)
$(deprange $PV $MAXKDEVER kde-base/kfouleggs)
$(deprange $PV $MAXKDEVER kde-base/klickety)
$(deprange $PV $MAXKDEVER kde-base/kjumpingcube)
$(deprange $PV $MAXKDEVER kde-base/kenolaba)
$(deprange $PV $MAXKDEVER kde-base/ksokoban)
$(deprange $PV $MAXKDEVER kde-base/atlantik)
"