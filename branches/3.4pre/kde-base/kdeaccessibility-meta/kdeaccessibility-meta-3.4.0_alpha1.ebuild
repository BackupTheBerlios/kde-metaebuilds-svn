# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $
MAXKDEVER=$PV

inherit kde-functions
DESCRIPTION="kdeaccessibility - merge this to pull in all kdeaccessiblity-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.4"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
$(deprange $PV $MAXKDEVER kde-base/kmag)
$(deprange $PV $MAXKDEVER kde-base/kmousetool)
$(deprange $PV $MAXKDEVER kde-base/kmouth)"

