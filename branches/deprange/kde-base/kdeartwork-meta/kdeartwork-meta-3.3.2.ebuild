# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kdeartwork - merge this to pull in all kdeartwork-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
$(need-version-range $PV $MAXKDEVER kde-base/kdeartwork-iconthemes)
$(need-version-range $PV $MAXKDEVER kde-base/kdeartwork-icewm-themes)
$(need-version-range $PV $MAXKDEVER kde-base/kdeartwork-kscreensaver)
$(need-version-range $PV $MAXKDEVER kde-base/kdeartwork-kwin-styles)
$(need-version-range $PV $MAXKDEVER kde-base/kdeartwork-kworldclock)
$(need-version-range $PV $MAXKDEVER kde-base/kdeartwork-sounds)
$(need-version-range $PV $MAXKDEVER kde-base/kdeartwork-styles)
$(need-version-range $PV $MAXKDEVER kde-base/kdeartwork-wallpapers)
"

