# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KDEMAXVER=3.3.1

DESCRIPTION="kdesdk - merge this to pull in all kdesdk-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
	~kde-base/cervisia-$PV
	~kde-base/kapptemplate-$PV
	~kde-base/kbabel-$PV
	~kde-base/kbugbuster-$PV
	~kde-base/kcachegrind-$PV
	~kde-base/kdesdk-kfile-plugins-$PV
	~kde-base/kdesdk-misc-$PV
	~kde-base/kdesdk-scripts-$PV
	~kde-base/kmtrace-$PV
	~kde-base/kompare-$PV
	~kde-base/kspy-$PV
	~kde-base/kuiviewer-$PV
	~kde-base/umbrello-$PV"
