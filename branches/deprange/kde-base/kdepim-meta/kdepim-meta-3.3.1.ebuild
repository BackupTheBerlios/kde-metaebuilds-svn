# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.1

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
	$(need-version-range $PV $MAXKDEVER kde-base/kalarmd)
	$(need-version-range $PV $MAXKDEVER kde-base/kandy)
	$(need-version-range $PV $MAXKDEVER kde-base/karm)
	$(need-version-range $PV $MAXKDEVER kde-base/kdepim-kioslaves)
	$(need-version-range $PV $MAXKDEVER kde-base/kdepim-kresources)
	$(need-version-range $PV $MAXKDEVER kde-base/kdepim-wizards)
	$(need-version-range $PV $MAXKDEVER kde-base/kitchensync)
	$(need-version-range $PV $MAXKDEVER kde-base/kmail)
	$(need-version-range $PV $MAXKDEVER kde-base/kmailcvt)
	$(need-version-range $PV $MAXKDEVER kde-base/kmobile)
	$(need-version-range $PV $MAXKDEVER kde-base/knode)
	$(need-version-range $PV $MAXKDEVER kde-base/knotes)
	$(need-version-range $PV $MAXKDEVER kde-base/konsolekalendar)
	$(need-version-range $PV $MAXKDEVER kde-base/kontact)
	$(need-version-range $PV $MAXKDEVER kde-base/korganizer)
	$(need-version-range $PV $MAXKDEVER kde-base/korn)
	$(need-version-range $PV $MAXKDEVER kde-base/kpilot)
	$(need-version-range $PV $MAXKDEVER kde-base/ksync)
	$(need-version-range $PV $MAXKDEVER kde-base/ktnef)
	$(need-version-range $PV $MAXKDEVER kde-base/libkcal)
	$(need-version-range $PV $MAXKDEVER kde-base/libkdenetwork)
	$(need-version-range $PV $MAXKDEVER kde-base/libkdepim)
	$(need-version-range $PV $MAXKDEVER kde-base/libkpimexchange)
	$(need-version-range $PV $MAXKDEVER kde-base/libkpimidentities)
	$(need-version-range $PV $MAXKDEVER kde-base/libksieve)
	$(need-version-range $PV $MAXKDEVER kde-base/mimelib)"
