# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

DESCRIPTION="kdeadmin - merge this to pull in all kdeadmin-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
~kde-base/kcmlinuz-${PV}
~kde-base/kcron-${PV}
~kde-base/kdat-${PV}
~kde-base/kdeadmin-kfile-plugins-${PV}
~kde-base/kuser-${PV}
x86? ( ~kde-base/lilo-config-${PV} )
~kde-base/secpolicy-${PV}"

# NOTE: kpackage, ksysv are useless on a normal gentoo system and so aren't included
# in the above list. However, packages do nominally exist for them.
