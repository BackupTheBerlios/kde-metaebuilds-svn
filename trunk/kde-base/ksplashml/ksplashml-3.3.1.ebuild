# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

KMNAME=kdebase
inherit kde-meta eutils

DESCRIPTION="KDE splashscreen framework (the splashscreen of KDE itself, not of individual apps)"
KEYWORDS="~x86"
IUSE=""

PATCHES="$FILESDIR/remove-startkde-$PV.diff"

src_install() {
	kde-meta_src_install
	
	#backup splashscreen images, so they can be put back when unmerging
	#mosfet or so.
	if [ ! -d ${KDEDIR}/share/apps/ksplash.default ]
	then
		cd ${D}/${KDEDIR}/share/apps
		cp -rf ksplash/ ksplash.default
	fi
}
