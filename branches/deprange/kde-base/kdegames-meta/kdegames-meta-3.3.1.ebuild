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
$(need-version-range $PV $MAXKDEVER kde-base/ktuberling)
arts? ( $(need-version-range $PV $MAXKDEVER kde-base/kolf) )
$(need-version-range $PV $MAXKDEVER kde-base/kpat)
$(need-version-range $PV $MAXKDEVER kde-base/katomic)
$(need-version-range $PV $MAXKDEVER kde-base/kbounce)
$(need-version-range $PV $MAXKDEVER kde-base/kbattleship)
$(need-version-range $PV $MAXKDEVER kde-base/ksame)
$(need-version-range $PV $MAXKDEVER kde-base/ktron)
$(need-version-range $PV $MAXKDEVER kde-base/kwin4)
$(need-version-range $PV $MAXKDEVER kde-base/lskat)
$(need-version-range $PV $MAXKDEVER kde-base/kgoldrunner)
$(need-version-range $PV $MAXKDEVER kde-base/kshisen)
$(need-version-range $PV $MAXKDEVER kde-base/ksirtet)
$(need-version-range $PV $MAXKDEVER kde-base/konquest)
$(need-version-range $PV $MAXKDEVER kde-base/kspaceduel)
$(need-version-range $PV $MAXKDEVER kde-base/kbackgammon)
$(need-version-range $PV $MAXKDEVER kde-base/kasteroids)
$(need-version-range $PV $MAXKDEVER kde-base/klines)
$(need-version-range $PV $MAXKDEVER kde-base/kmines)
$(need-version-range $PV $MAXKDEVER kde-base/kpoker)
$(need-version-range $PV $MAXKDEVER kde-base/ksnake)
$(need-version-range $PV $MAXKDEVER kde-base/kreversi)
$(need-version-range $PV $MAXKDEVER kde-base/kblackbox)
$(need-version-range $PV $MAXKDEVER kde-base/ksmiletris)
$(need-version-range $PV $MAXKDEVER kde-base/kmahjongg)
$(need-version-range $PV $MAXKDEVER kde-base/kfouleggs)
$(need-version-range $PV $MAXKDEVER kde-base/klickety)
$(need-version-range $PV $MAXKDEVER kde-base/kjumpingcube)
$(need-version-range $PV $MAXKDEVER kde-base/kenolaba)
$(need-version-range $PV $MAXKDEVER kde-base/ksokoban)
$(need-version-range $PV $MAXKDEVER kde-base/atlantik)
"