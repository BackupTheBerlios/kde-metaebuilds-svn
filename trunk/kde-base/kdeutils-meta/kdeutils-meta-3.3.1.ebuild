# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="kdeutils 3.3.0 - merge this to pull in all kdeutils-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

# We don't add kcardtools because it needs a libksmartcard from kdelibs that it's not alway installed"
DEPEND="
	~kde-base/ark-$PV
	~kde-base/kcalc-$PV
	~kde-base/kcharselect-$PV
	lirc? ( ~kde-base/kdelirc-$PV )
	~kde-base/kdf-$PV
	~kde-base/kedit-$PV
	~kde-base/kfloppy-$PV
	~kde-base/kgpg-$PV
	~kde-base/khexedit-$PV
	~kde-base/kjots-$PV
	~kde-base/klaptopdaemon-$PV
	~kde-base/kmilo-$PV
	~kde-base/kregexpeditor-$PV
	~kde-base/ksim-$PV
	~kde-base/ktimer-$PV
	~kde-base/kwalletmanager-$PV"
