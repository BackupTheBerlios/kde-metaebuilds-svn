# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.1

inherit kde-functions
DESCRIPTION="kdewebdev - merge this to pull in all kdewebdev-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
$(need-version-range $PV $MAXKDEVER kde-base/kfilereplace)
$(need-version-range $PV $MAXKDEVER kde-base/kimagemapeditor)
$(need-version-range $PV $MAXKDEVER kde-base/klinkstatus)
$(need-version-range $PV $MAXKDEVER kde-base/kommander)
$(need-version-range $PV $MAXKDEVER kde-base/kxsldbg)
$(need-version-range $PV $MAXKDEVER kde-base/quanta)
"