# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdewebdev
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE: Quanta Plus Web Development Environment"
KEYWORDS="~x86"
IUSE="doc"
DEPEND="doc? ( app-doc/quanta-docs )
	dev-libs/libxml2"
RDEPEND="$DEPEND
$(need-version-range $PV $MAXKDEVER kde-base/kfilereplace)
$(need-version-range $PV $MAXKDEVER kde-base/kimagemapeditor)
$(need-version-range $PV $MAXKDEVER kde-base/klinkstatus)
$(need-version-range $PV $MAXKDEVER kde-base/kommander)
$(need-version-range $PV $MAXKDEVER kde-base/kxsldbg)"

KMCOMPILEONLY=lib

# TODO: check why this wasn't needed back in the monolithic ebuild
src_compile () {
    export LIBXML_LIBS="`xml2-config --libs`"
    export LIBXSLT_LIBS="`xslt-config --libs`"
    kde-meta_src_compile
}

