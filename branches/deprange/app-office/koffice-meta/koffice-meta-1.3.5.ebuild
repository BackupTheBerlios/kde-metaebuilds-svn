# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKOFFICEVER=1.3.5

inherit kde-functions
DESCRIPTION="koffice - merge this to pull in all koffice-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

# Note most packages didn't change between koffice 1.3.4 and 1.3.5
RDEPEND="$(deprange 1.3.4 $PV app-office/karbon)
	$(deprange 1.3.4 $PV app-office/kchart)
	$(deprange 1.3.4 $PV app-office/kformula)
	$(deprange 1.3.4 $PV app-office/kivio)
	$(deprange 1.3.4 $PV app-office/koffice-data)
	$(deprange 1.3.4 $PV app-office/koffice-libs)
	$(deprange 1.3.4 $PV app-office/koshell)
	$(deprange $PV $MAXKOFFICEVER app-office/kpresenter)
	$(deprange $PV $MAXKOFFICEVER app-office/kspread)
	$(deprange 1.3.4 $PV app-office/kugar)
	$(deprange $PV $MAXKOFFICEVER app-office/kword)"
