# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MAXKOFFICEVER=1.3.5
KMNAME=koffice
inherit kde-meta eutils

DESCRIPTION="KOffice Formula Editor"
HOMEPAGE="http://www.koffice.org/"
SRC_URI="$SRC_URI mirror://kde/stable/${KMNAME}/src/${KMNAME}-${PV}.tar.bz2"

LICENSE="GPL-2 LGPL-2"
KEYWORDS="~x86"

IUSE=""
SLOT="0"

DEPEND="$(need-version-range $PV $MAXKOFFICEVER app-office/koffice-libs)
	dev-util/pkgconfig"

KMCOPYLIB="
	libkformula lib/kformula
	libkofficecore lib/kofficecore
	libkofficeui lib/kofficeui
	libkopainter lib/kopainter
	libkoscript lib/koscript
	libkospell lib/kospell
	libkotext lib/kotext
	libkwmf lib/kwmf
	libkowmf lib/kwmf
	libkstore lib/store"
	
KMEXTRACTONLY="lib/"

KMEXTRA="filters/kformula"

need-kde 3.1


