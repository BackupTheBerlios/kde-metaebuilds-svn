# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

DESCRIPTION="kdebase 3.3.0 - merge this to pull in all kdebase-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
~kde-base/kdeaccessibility-meta-${PV}
~kde-base/kdeaddons-meta-${PV}
~kde-base/kdeadmin-meta-${PV}
~kde-base/kdebase-meta-${PV}
~kde-base/kdeedu-meta-${PV}
~kde-base/kdegames-meta-${PV}
~kde-base/kdegraphics-meta-${PV}
~kde-base/kdemultimedia-meta-${PV}
~kde-base/kdenetwork-meta-${PV}
~kde-base/kdepim-meta-${PV}
~kde-base/kdesdk-meta-${PV}
~kde-base/kdetoys-meta-${PV}
~kde-base/kdeutils-meta-${PV}
~kde-base/kdewebdev-meta-${PV}"
