# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.1

inherit kde-functions
DESCRIPTION="kdesdk - merge this to pull in all kdesdk-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
	$(deprange $PV $MAXKDEVER kde-base/cervisia)
	$(deprange $PV $MAXKDEVER kde-base/kapptemplate)
	$(deprange $PV $MAXKDEVER kde-base/kbabel)
	$(deprange $PV $MAXKDEVER kde-base/kbugbuster)
	$(deprange $PV $MAXKDEVER kde-base/kcachegrind)
	$(deprange $PV $MAXKDEVER kde-base/kdesdk-kfile-plugins)
	$(deprange $PV $MAXKDEVER kde-base/kdesdk-misc)
	$(deprange $PV $MAXKDEVER kde-base/kdesdk-scripts)
	$(deprange $PV $MAXKDEVER kde-base/kmtrace)
	$(deprange $PV $MAXKDEVER kde-base/kompare)
	$(deprange $PV $MAXKDEVER kde-base/kspy)
	$(deprange $PV $MAXKDEVER kde-base/kuiviewer)
	$(deprange $PV $MAXKDEVER kde-base/umbrello)"
