# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="kdesdk - merge this to pull in all kdesdk-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

DEPEND="
	~kde-base/cervisia-$PV
	~kde-base/kapptemplate-3.3.1
	~kde-base/kbabel-$PV
	~kde-base/kbugbuster-$PV
	~kde-base/kcachegrind-3.3.1
	~kde-base/kdesdk-kfile-plugins-3.3.1
	~kde-base/kdesdk-misc-$PV
	~kde-base/kdesdk-scripts-$PV
	~kde-base/kmtrace-3.3.1
	~kde-base/kompare-$PV
	~kde-base/kspy-3.3.1
	~kde-base/kuiviewer-3.3.1
	~kde-base/umbrello-$PV"
