# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

KMNAME=kdebase
# Note: we need >=kdelibs-3.3.2-r1, but we don't want 3.3.3!
KDEMAXVER=3.3.2
KM_DEPRANGE="3.3.2-r1 $KDEMAXVER"
inherit kde-meta eutils

DESCRIPTION="KDE: Web browser, file manager, ..."
KEYWORDS="~x86"
IUSE=""
PATCHES="$FILESDIR/remove-startkde-$PV.diff"
DEPEND="~kde-base/libkonq-3.3.1"
RDEPEND="${DEPEND}
	~kde-base/kcontrol-$PV"
KMCOPYLIB="libkonq libkonq"
KMEXTRACTONLY=kdesktop/KDesktopIface.h

PATCHES="$FILESDIR/post-3.3.2-kdebase-htmlframes2.patch"
