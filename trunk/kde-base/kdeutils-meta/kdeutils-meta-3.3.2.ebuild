# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="kdeutils - merge this to pull in all kdeutils-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

# We don't add kcardtools because it needs a libksmartcard from kdelibs that it's not alway installed"
DEPEND="
	~kde-base/ark-3.3.1
	~kde-base/kcalc-3.3.1
	~kde-base/kcharselect-3.3.1
	lirc? ( ~kde-base/kdelirc-3.3.1 )
	~kde-base/kdf-$PV
	~kde-base/kedit-3.3.1
	~kde-base/kfloppy-3.3.1
	~kde-base/kgpg-3.3.1
	~kde-base/khexedit-$PV
	~kde-base/kjots-3.3.1
	~kde-base/klaptopdaemon-$PV
	~kde-base/kmilo-3.3.1
	~kde-base/kregexpeditor-3.3.1
	~kde-base/ksim-$PV
	~kde-base/ktimer-3.3.1
	~kde-base/kwalletmanager-$PV"
