# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.1

inherit kde-functions
DESCRIPTION="kdenetwork - merge this to pull in all kdenetwork-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="$(need-version-range $PV $MAXKDEVER kde-base/dcoprss)
	$(need-version-range $PV $MAXKDEVER kde-base/kdenetwork-filesharing)
	$(need-version-range $PV $MAXKDEVER kde-base/kdict)
	$(need-version-range $PV $MAXKDEVER kde-base/kget)
	$(need-version-range $PV $MAXKDEVER kde-base/knewsticker)
	$(need-version-range $PV $MAXKDEVER kde-base/kopete)
	$(need-version-range $PV $MAXKDEVER kde-base/kpf)
	$(need-version-range $PV $MAXKDEVER kde-base/kppp)
	$(need-version-range $PV $MAXKDEVER kde-base/krdc)
	$(need-version-range $PV $MAXKDEVER kde-base/krfb)
	$(need-version-range $PV $MAXKDEVER kde-base/ksirc)
	$(need-version-range $PV $MAXKDEVER kde-base/ktalkd)
	$(need-version-range $PV $MAXKDEVER kde-base/kwifimanager)
	$(need-version-range $PV $MAXKDEVER kde-base/librss)
	$(need-version-range $PV $MAXKDEVER kde-base/lisa)"
