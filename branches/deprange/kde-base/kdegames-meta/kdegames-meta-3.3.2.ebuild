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
$(need-version-range $PV $MAXKDEVER kde-base/atlantik)
$(need-version-range 3.3.1 $PV kde-base/kasteroids)
$(need-version-range 3.3.1 $PV kde-base/katomic)
$(need-version-range 3.3.1 $PV kde-base/kbackgammon)
$(need-version-range 3.3.1 $PV kde-base/kbattleship)
$(need-version-range 3.3.1 $PV kde-base/kblackbox)
$(need-version-range 3.3.1 $PV kde-base/kbounce)
$(need-version-range 3.3.1 $PV kde-base/kenolaba)
$(need-version-range 3.3.1 $PV kde-base/kfouleggs)
$(need-version-range $PV $MAXKDEVER kde-base/kgoldrunner)
$(need-version-range 3.3.1 $PV kde-base/kjumpingcube)
$(need-version-range 3.3.1 $PV kde-base/klickety)
$(need-version-range 3.3.1 $PV kde-base/klines)
$(need-version-range 3.3.1 $PV kde-base/kmahjongg)
$(need-version-range $PV $MAXKDEVER kde-base/kmines)
arts? ( $(need-version-range 3.3.1 $PV kde-base/kolf) )
$(need-version-range 3.3.1 $PV kde-base/konquest)
$(need-version-range $PV $MAXKDEVER kde-base/kpat)
$(need-version-range $PV $MAXKDEVER kde-base/kpoker)
$(need-version-range 3.3.1 $PV kde-base/ktron)
$(need-version-range 3.3.1 $PV kde-base/ktuberling)
$(need-version-range 3.3.1 $PV kde-base/ksame)
$(need-version-range 3.3.1 $PV kde-base/kshisen)
$(need-version-range 3.3.1 $PV kde-base/ksirtet)
$(need-version-range 3.3.1 $PV kde-base/ksmiletris)
$(need-version-range 3.3.1 $PV kde-base/ksnake)
$(need-version-range 3.3.1 $PV kde-base/ksokoban)
$(need-version-range 3.3.1 $PV kde-base/kspaceduel)
$(need-version-range 3.3.1 $PV kde-base/kreversi)
$(need-version-range 3.3.1 $PV kde-base/kwin4)
$(need-version-range 3.3.1 $PV kde-base/lskat)
"