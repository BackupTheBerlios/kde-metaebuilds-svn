# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdewebdev
inherit kde-meta

DESCRIPTION="KDE: Quanta Plus Web Development Environment"
KEYWORDS="~x86"
IUSE="doc"
DEPEND="doc? ( app-doc/quanta-docs )
	dev-libs/libxml2"
RDEPEND="$DEPEND
	~kde-base/kfilereplace-$PV
	~kde-base/kimagemapeditor-$PV
	~kde-base/klinkstatus-$PV
	~kde-base/kommander-$PV
	~kde-base/kxsldbg-3.3.1"
myconf="--with-extra-includes=$(xml2-config --cflags | sed -e 's:^-I::')"

KMCOMPILEONLY=lib

# TODO: check why this wasn't needed back in the monolithic ebuild
src_compile () {
    export LIBXML_LIBS="`xml2-config --libs`"
    export LIBXSLT_LIBS="`xslt-config --libs`"
    kde-meta_src_compile
}

