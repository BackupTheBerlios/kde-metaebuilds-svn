# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KDEMAXVER=3.3.2

DESCRIPTION="kdeartwork - merge this to pull in all kdeartwork-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

DEPEND="
~kde-base/kdeartwork-iconthemes-$PV
~kde-base/kdeartwork-icewm-themes-$PV
~kde-base/kdeartwork-kscreensaver-$PV
~kde-base/kdeartwork-kwin-styles-$PV
~kde-base/kdeartwork-kworldclock-$PV
~kde-base/kdeartwork-sounds-$PV
~kde-base/kdeartwork-styles-$PV
~kde-base/kdeartwork-wallpapers-$PV
"

