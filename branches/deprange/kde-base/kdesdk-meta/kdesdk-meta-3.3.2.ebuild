# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kdesdk - merge this to pull in all kdesdk-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
	$(need-version-range $PV $MAXKDEVER kde-base/cervisia)
	$(need-version-range 3.3.1 $PV kde-base/kapptemplate)
	$(need-version-range $PV $MAXKDEVER kde-base/kbabel)
	$(need-version-range $PV $MAXKDEVER kde-base/kbugbuster)
	$(need-version-range 3.3.1 $PV kde-base/kcachegrind)
	$(need-version-range 3.3.1 $PV kde-base/kdesdk-kfile-plugins)
	$(need-version-range $PV $MAXKDEVER kde-base/kdesdk-misc)
	$(need-version-range $PV $MAXKDEVER kde-base/kdesdk-scripts)
	$(need-version-range 3.3.1 $PV kde-base/kmtrace)
	$(need-version-range $PV $MAXKDEVER kde-base/kompare)
	$(need-version-range 3.3.1 $PV kde-base/kspy)
	$(need-version-range 3.3.1 $PV kde-base/kuiviewer)
	$(need-version-range $PV $MAXKDEVER kde-base/umbrello)"
