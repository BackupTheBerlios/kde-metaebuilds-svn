# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kdeutils - merge this to pull in all kdeutils-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

# We don't add kcardtools because it needs a libksmartcard from kdelibs that it's not alway installed"
RDEPEND="
	$(deprange 3.3.1 $PV kde-base/ark)
	$(deprange 3.3.1 $PV kde-base/kcalc)
	$(deprange 3.3.1 $PV kde-base/kcharselect)
	lirc? ( $(deprange 3.3.1 $PV kde-base/kdelirc) )
	$(deprange $PV $MAXKDEVER kde-base/kdf)
	$(deprange 3.3.1 $PV kde-base/kedit)
	$(deprange 3.3.1 $PV kde-base/kfloppy)
	$(deprange 3.3.1 $PV kde-base/kgpg)
	$(deprange $PV $MAXKDEVER kde-base/khexedit)
	$(deprange 3.3.1 $PV kde-base/kjots)
	$(deprange $PV $MAXKDEVER kde-base/klaptopdaemon)
	$(deprange 3.3.1 $PV kde-base/kmilo)
	$(deprange 3.3.1 $PV kde-base/kregexpeditor)
	$(deprange $PV $MAXKDEVER kde-base/ksim)
	$(deprange 3.3.1 $PV kde-base/ktimer)
	$(deprange $PV $MAXKDEVER kde-base/kwalletmanager)"
