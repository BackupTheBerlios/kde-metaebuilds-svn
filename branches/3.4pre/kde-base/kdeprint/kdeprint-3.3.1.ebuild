# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

KMNAME=kdebase
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE printer queue/device manager"
KEYWORDS="~x86"
IUSE="cups"
PATCHES="$FILESDIR/remove-startkde-$PV.diff"
DEPEND="cups? ( net-print/cups )"

src_compile() {
	myconf="$myconf `use_with cups`"
	kde-meta_src_compile
}
	