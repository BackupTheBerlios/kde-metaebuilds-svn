# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

DESCRIPTION="kdeaccessibility 3.3.1 - merge this to pull in all kdeaccessiblity-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
~kde-base/kmag-${PV}
~kde-base/kmousetool-${PV}
~kde-base/kmouth-${PV}"

