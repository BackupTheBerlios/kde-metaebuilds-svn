# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KDEMAXVER=3.3.2

DESCRIPTION="kdegames - merge this to pull in all kdepim-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
~kde-base/atlantik-$PV
~kde-base/kasteroids-3.3.1
~kde-base/katomic-3.3.1
~kde-base/kbackgammon-3.3.1
~kde-base/kbattleship-3.3.1
~kde-base/kblackbox-3.3.1
~kde-base/kbounce-3.3.1
~kde-base/kenolaba-3.3.1
~kde-base/kfouleggs-3.3.1
~kde-base/kgoldrunner-$PV
~kde-base/kjumpingcube-3.3.1
~kde-base/klickety-3.3.1
~kde-base/klines-3.3.1
~kde-base/kmahjongg-3.3.1
~kde-base/kmines-$PV
arts? ( ~kde-base/kolf-3.3.1 )
~kde-base/konquest-3.3.1
~kde-base/kpat-$PV
~kde-base/kpoker-$PV
~kde-base/ktron-3.3.1
~kde-base/ktuberling-3.3.1
~kde-base/ksame-3.3.1
~kde-base/kshisen-3.3.1
~kde-base/ksirtet-3.3.1
~kde-base/ksmiletris-3.3.1
~kde-base/ksnake-3.3.1
~kde-base/ksokoban-3.3.1
~kde-base/kspaceduel-3.3.1
~kde-base/kreversi-3.3.1
~kde-base/kwin4-3.3.1
~kde-base/lskat-3.3.1
"