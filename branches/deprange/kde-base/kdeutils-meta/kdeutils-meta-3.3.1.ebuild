# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.1

inherit kde-functions
DESCRIPTION="kdeutils - merge this to pull in all kdeutils-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

# We don't add kcardtools because it needs a libksmartcard from kdelibs that it's not alway installed"
RDEPEND="
	$(need-version-range $PV $MAXKDEVER kde-base/ark)
	$(need-version-range $PV $MAXKDEVER kde-base/kcalc)
	$(need-version-range $PV $MAXKDEVER kde-base/kcharselect)
	lirc? ( $(need-version-range $PV $MAXKDEVER kde-base/kdelirc) )
	$(need-version-range $PV $MAXKDEVER kde-base/kdf)
	$(need-version-range $PV $MAXKDEVER kde-base/kedit)
	$(need-version-range $PV $MAXKDEVER kde-base/kfloppy)
	$(need-version-range $PV $MAXKDEVER kde-base/kgpg)
	$(need-version-range $PV $MAXKDEVER kde-base/khexedit)
	$(need-version-range $PV $MAXKDEVER kde-base/kjots)
	$(need-version-range $PV $MAXKDEVER kde-base/klaptopdaemon)
	$(need-version-range $PV $MAXKDEVER kde-base/kmilo)
	$(need-version-range $PV $MAXKDEVER kde-base/kregexpeditor)
	$(need-version-range $PV $MAXKDEVER kde-base/ksim)
	$(need-version-range $PV $MAXKDEVER kde-base/ktimer)
	$(need-version-range $PV $MAXKDEVER kde-base/kwalletmanager)"
