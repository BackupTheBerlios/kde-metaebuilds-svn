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
$(need-version-range 3.3.1 $PV kde-base/amor)
$(need-version-range 3.3.1 $PV kde-base/eyesapplet)
$(need-version-range 3.3.1 $PV kde-base/fifteenapplet)
$(need-version-range 3.3.1 $PV kde-base/kmoon)
$(need-version-range 3.3.1 $PV kde-base/kodo)
$(need-version-range 3.3.1 $PV kde-base/kteatime)
$(need-version-range 3.3.1 $PV kde-base/ktux)
$(need-version-range $PV $MAXKDEVER kde-base/kweather)
$(need-version-range $PV $MAXKDEVER kde-base/kworldwatch)
"
