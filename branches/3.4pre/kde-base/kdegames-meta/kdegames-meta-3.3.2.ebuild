# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kdegames - merge this to pull in all kdepim-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
$(deprange $PV $MAXKDEVER kde-base/atlantik)
$(deprange 3.3.1 $PV kde-base/kasteroids)
$(deprange 3.3.1 $PV kde-base/katomic)
$(deprange 3.3.1 $PV kde-base/kbackgammon)
$(deprange 3.3.1 $PV kde-base/kbattleship)
$(deprange 3.3.1 $PV kde-base/kblackbox)
$(deprange 3.3.1 $PV kde-base/kbounce)
$(deprange 3.3.1 $PV kde-base/kenolaba)
$(deprange 3.3.1 $PV kde-base/kfouleggs)
$(deprange $PV $MAXKDEVER kde-base/kgoldrunner)
$(deprange 3.3.1 $PV kde-base/kjumpingcube)
$(deprange 3.3.1 $PV kde-base/klickety)
$(deprange 3.3.1 $PV kde-base/klines)
$(deprange 3.3.1 $PV kde-base/kmahjongg)
$(deprange $PV $MAXKDEVER kde-base/kmines)
arts? ( $(deprange 3.3.1 $PV kde-base/kolf) )
$(deprange 3.3.1 $PV kde-base/konquest)
$(deprange $PV $MAXKDEVER kde-base/kpat)
$(deprange $PV $MAXKDEVER kde-base/kpoker)
$(deprange 3.3.1 $PV kde-base/ktron)
$(deprange 3.3.1 $PV kde-base/ktuberling)
$(deprange 3.3.1 $PV kde-base/ksame)
$(deprange 3.3.1 $PV kde-base/kshisen)
$(deprange 3.3.1 $PV kde-base/ksirtet)
$(deprange 3.3.1 $PV kde-base/ksmiletris)
$(deprange 3.3.1 $PV kde-base/ksnake)
$(deprange 3.3.1 $PV kde-base/ksokoban)
$(deprange 3.3.1 $PV kde-base/kspaceduel)
$(deprange 3.3.1 $PV kde-base/kreversi)
$(deprange 3.3.1 $PV kde-base/kwin4)
$(deprange 3.3.1 $PV kde-base/lskat)
"