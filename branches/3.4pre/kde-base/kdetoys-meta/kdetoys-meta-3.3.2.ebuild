# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kdetoys - merge this to pull in all kdetoys-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
$(deprange 3.3.1 $PV kde-base/amor)
$(deprange 3.3.1 $PV kde-base/eyesapplet)
$(deprange 3.3.1 $PV kde-base/fifteenapplet)
$(deprange 3.3.1 $PV kde-base/kmoon)
$(deprange 3.3.1 $PV kde-base/kodo)
$(deprange 3.3.1 $PV kde-base/kteatime)
$(deprange 3.3.1 $PV kde-base/ktux)
$(deprange $PV $MAXKDEVER kde-base/kweather)
$(deprange $PV $MAXKDEVER kde-base/kworldwatch)
"
