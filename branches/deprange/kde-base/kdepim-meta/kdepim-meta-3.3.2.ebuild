# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kdepim 3.3.0 - merge this to pull in all kdepim-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
	$(deprange $PV $MAXKDEVER kde-base/certmanager)
	$(deprange $PV $MAXKDEVER kde-base/kaddressbook)
	$(deprange $PV $MAXKDEVER kde-base/kalarm)
	$(deprange 3.3.1 $PV kde-base/kalarmd)
	$(deprange 3.3.1 $PV kde-base/kandy)
	$(deprange $PV $MAXKDEVER kde-base/karm)
	$(deprange $PV $MAXKDEVER kde-base/kdepim-kioslaves)
	$(deprange $PV $MAXKDEVER kde-base/kdepim-kresources)
	$(deprange 3.3.1 $PV kde-base/kdepim-wizards)
	$(deprange 3.3.1 $PV kde-base/kitchensync)
	$(deprange $PV $MAXKDEVER kde-base/kmail)
	$(deprange 3.3.1 $PV kde-base/kmailcvt)
	$(deprange 3.3.1 $PV kde-base/kmobile)
	$(deprange $PV $MAXKDEVER kde-base/knode)
	$(deprange $PV $MAXKDEVER kde-base/knotes)
	$(deprange 3.3.1 $PV kde-base/konsolekalendar)
	$(deprange $PV $MAXKDEVER kde-base/kontact)
	$(deprange $PV $MAXKDEVER kde-base/korganizer)
	$(deprange 3.3.1 $PV kde-base/korn)
	$(deprange $PV $MAXKDEVER kde-base/kpilot)
	$(deprange 3.3.1 $PV kde-base/ksync)
	$(deprange $PV $MAXKDEVER kde-base/ktnef)
	$(deprange $PV $MAXKDEVER kde-base/libkcal)
	$(deprange $PV $MAXKDEVER kde-base/libkdenetwork)
	$(deprange $PV $MAXKDEVER kde-base/libkdepim)
	$(deprange $PV $MAXKDEVER kde-base/libkpimexchange)
	$(deprange 3.3.1 $PV kde-base/libkpimidentities)
	$(deprange 3.3.1 $PV kde-base/libksieve)
	$(deprange $PV $MAXKDEVER kde-base/mimelib)"
