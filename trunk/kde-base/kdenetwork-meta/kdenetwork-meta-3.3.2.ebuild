# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kdenetwork - merge this to pull in all kdenetwork-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="$(deprange 3.3.1 $PV kde-base/dcoprss)
	$(deprange 3.3.1 $PV kde-base/kdenetwork-filesharing)
	$(deprange 3.3.1 $PV kde-base/kdict)
	$(deprange $PV $MAXKDEVER kde-base/kget)
	$(deprange $PV $MAXKDEVER kde-base/knewsticker)
	$(deprange $PV $MAXKDEVER kde-base/kopete)
	$(deprange 3.3.1 $PV kde-base/kpf)
	$(deprange $PV $MAXKDEVER kde-base/kppp)
	$(deprange 3.3.1 $PV kde-base/krdc)
	$(deprange 3.3.1 $PV kde-base/krfb)
	$(deprange $PV $MAXKDEVER kde-base/ksirc)
	$(deprange 3.3.1 $PV kde-base/ktalkd)
	$(deprange $PV $MAXKDEVER kde-base/kwifimanager)
	$(deprange 3.3.1 $PV kde-base/librss)
	$(deprange 3.3.1 $PV kde-base/lisa)"
