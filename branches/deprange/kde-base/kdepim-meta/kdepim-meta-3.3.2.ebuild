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
	$(need-version-range $PV $MAXKDEVER kde-base/certmanager)
	$(need-version-range $PV $MAXKDEVER kde-base/kaddressbook)
	$(need-version-range $PV $MAXKDEVER kde-base/kalarm)
	$(need-version-range 3.3.1 $PV kde-base/kalarmd)
	$(need-version-range 3.3.1 $PV kde-base/kandy)
	$(need-version-range $PV $MAXKDEVER kde-base/karm)
	$(need-version-range $PV $MAXKDEVER kde-base/kdepim-kioslaves)
	$(need-version-range $PV $MAXKDEVER kde-base/kdepim-kresources)
	$(need-version-range 3.3.1 $PV kde-base/kdepim-wizards)
	$(need-version-range 3.3.1 $PV kde-base/kitchensync)
	$(need-version-range $PV $MAXKDEVER kde-base/kmail)
	$(need-version-range 3.3.1 $PV kde-base/kmailcvt)
	$(need-version-range 3.3.1 $PV kde-base/kmobile)
	$(need-version-range $PV $MAXKDEVER kde-base/knode)
	$(need-version-range $PV $MAXKDEVER kde-base/knotes)
	$(need-version-range 3.3.1 $PV kde-base/konsolekalendar)
	$(need-version-range $PV $MAXKDEVER kde-base/kontact)
	$(need-version-range $PV $MAXKDEVER kde-base/korganizer)
	$(need-version-range 3.3.1 $PV kde-base/korn)
	$(need-version-range $PV $MAXKDEVER kde-base/kpilot)
	$(need-version-range 3.3.1 $PV kde-base/ksync)
	$(need-version-range $PV $MAXKDEVER kde-base/ktnef)
	$(need-version-range $PV $MAXKDEVER kde-base/libkcal)
	$(need-version-range $PV $MAXKDEVER kde-base/libkdenetwork)
	$(need-version-range $PV $MAXKDEVER kde-base/libkdepim)
	$(need-version-range $PV $MAXKDEVER kde-base/libkpimexchange)
	$(need-version-range 3.3.1 $PV kde-base/libkpimidentities)
	$(need-version-range 3.3.1 $PV kde-base/libksieve)
	$(need-version-range $PV $MAXKDEVER kde-base/mimelib)"
