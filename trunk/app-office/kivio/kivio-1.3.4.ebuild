# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MAXKOFFICEVER=1.3.5
KMNAME=koffice
inherit kde-meta eutils

DESCRIPTION="KOffice Flowchart And Diagram Tool"
HOMEPAGE="http://www.koffice.org/"
SRC_URI="$SRC_URI mirror://kde/stable/${KMNAME}/src/${KMNAME}-${PV}.tar.bz2"

LICENSE="GPL-2 LGPL-2"
KEYWORDS="~x86"

IUSE=""
SLOT="0"

DEPEND="$(deprange $PV $MAXKOFFICEVER app-office/koffice-libs)
	>=dev-lang/python-2.2.1
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

need-kde 3.1

src_compile() {
	export LIBPYTHON="`python-config --libs`"
	kde-meta_src_compile
}
