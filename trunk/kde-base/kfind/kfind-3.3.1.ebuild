# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

KMNAME=kdebase
inherit kde-meta eutils

DESCRIPTION="KDE file find utility"
KEYWORDS="~x86"
IUSE=""
PATCHES="$FILESDIR/remove-startkde-$PV.diff"
DEPEND="$DEPEND ~kde-base/libkonq-$PV"
KMCOPYLIB="libkonq libkonq"
