# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="koffice - merge this to pull in all koffice-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

# Note most packages didn't change between koffice 1.3.4 and 1.3.5
DEPEND="~app-office/karbon-1.3.4
	~app-office/kchart-1.3.4
	~app-office/kformula-1.3.4
	~app-office/kivio-1.3.4
	~app-office/koffice-data-1.3.4
	~app-office/koffice-libs-1.3.4
	~app-office/koshell-1.3.4
	~app-office/kpresenter-1.3.5
	~app-office/kspread-1.3.5
	~app-office/kugar-1.3.4
	~app-office/kword-1.3.5"
