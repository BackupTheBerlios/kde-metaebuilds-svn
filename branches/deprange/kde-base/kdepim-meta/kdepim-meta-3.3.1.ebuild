# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

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
	~kde-base/kalarmd-$PV
	~kde-base/kandy-$PV
	~kde-base/karm-$PV
	~kde-base/kdepim-kioslaves-$PV
	~kde-base/kdepim-kresources-$PV
	~kde-base/kdepim-wizards-$PV
	~kde-base/kitchensync-$PV
	~kde-base/kmail-$PV
	~kde-base/kmailcvt-$PV
	~kde-base/kmobile-$PV
	~kde-base/knode-$PV
	~kde-base/knotes-$PV
	~kde-base/konsolekalendar-$PV
	~kde-base/kontact-$PV
	~kde-base/korganizer-$PV
	~kde-base/korn-$PV
	~kde-base/kpilot-$PV
	~kde-base/ksync-$PV
	~kde-base/ktnef-$PV
	~kde-base/libkcal-$PV
	~kde-base/libkdenetwork-$PV
	~kde-base/libkdepim-$PV
	~kde-base/libkpimexchange-$PV
	~kde-base/libkpimidentities-$PV
	~kde-base/libksieve-$PV
	~kde-base/mimelib-$PV"
