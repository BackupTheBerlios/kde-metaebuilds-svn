# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kde - merge this to pull in all kde packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
$(need-version-range 3.3.1 $PV kde-base/kdeaccessibility-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdeaddons-meta)
$(need-version-range 3.3.1 $PV kde-base/kdeadmin-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdebase-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdeedu-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdegames-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdegraphics-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdemultimedia-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdenetwork-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdepim-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdesdk-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdetoys-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdeutils-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdewebdev-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdeartwork-meta)"
