# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KDEMAXVER=3.3.2

DESCRIPTION="kdepim 3.3.0 - merge this to pull in all kdepim-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
	~kde-base/certmanager-$PV
	~kde-base/kaddressbook-$PV
	~kde-base/kalarm-$PV
	~kde-base/kalarmd-3.3.1
	~kde-base/kandy-3.3.1
	~kde-base/karm-$PV
	~kde-base/kdepim-kioslaves-$PV
	~kde-base/kdepim-kresources-$PV
	~kde-base/kdepim-wizards-3.3.1
	~kde-base/kitchensync-3.3.1
	~kde-base/kmail-$PV
	~kde-base/kmailcvt-3.3.1
	~kde-base/kmobile-3.3.1
	~kde-base/knode-$PV
	~kde-base/knotes-$PV
	~kde-base/konsolekalendar-3.3.1
	~kde-base/kontact-$PV
	~kde-base/korganizer-$PV
	~kde-base/korn-3.3.1
	~kde-base/kpilot-$PV
	~kde-base/ksync-3.3.1
	~kde-base/ktnef-$PV
	~kde-base/libkcal-$PV
	~kde-base/libkdenetwork-$PV
	~kde-base/libkdepim-$PV
	~kde-base/libkpimexchange-$PV
	~kde-base/libkpimidentities-3.3.1
	~kde-base/libksieve-3.3.1
	~kde-base/mimelib-$PV"
