# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKOFFICEVER=1.3.4

inherit kde-functions
DESCRIPTION="koffice - merge this to pull in all koffice-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="$(need-version-range $PV $MAXKOFFICEVER app-office/karbon)
	$(need-version-range $PV $MAXKOFFICEVER app-office/kchart)
	$(need-version-range $PV $MAXKOFFICEVER app-office/kformula)
	$(need-version-range $PV $MAXKOFFICEVER app-office/kivio)
	$(need-version-range $PV $MAXKOFFICEVER app-office/koffice-data)
	$(need-version-range $PV $MAXKOFFICEVER app-office/koffice-libs)
	$(need-version-range $PV $MAXKOFFICEVER app-office/koshell)
	$(need-version-range $PV $MAXKOFFICEVER app-office/kpresenter)
	$(need-version-range $PV $MAXKOFFICEVER app-office/kspread)
	$(need-version-range $PV $MAXKOFFICEVER app-office/kugar)
	$(need-version-range $PV $MAXKOFFICEVER app-office/kword)"
