# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="koffice - merge this to pull in all koffice-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

DEPEND="~app-office/karbon-$PV
	~app-office/kchart-$PV
	~app-office/kformula-$PV
	~app-office/kivio-$PV
	~app-office/koffice-data-$PV
	~app-office/koffice-libs-$PV
	~app-office/koshell-$PV
	~app-office/kpresenter-$PV
	~app-office/kspread-$PV
	~app-office/kugar-$PV
	~app-office/kword-$PV"
