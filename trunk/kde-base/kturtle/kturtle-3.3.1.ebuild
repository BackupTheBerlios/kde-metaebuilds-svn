# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeedu
inherit kde-meta

DESCRIPTION=""
KEYWORDS="~x86"
IUSE=""
DEPEND=""

# fix for bug 62510 - weird character on JFS
KMTARPARAMS="--exclude=kdeedu-3.3.1/kturtle/examples/fr_FR"
src_unpack() {
    kde-meta_src_unpack unpack
    cd $WORKDIR
    bzip2 -dc $DISTDIR/${myP}.tar.bz2 | tar xf - kdeedu-3.3.1/kturtle/examples/fr_FR
    mv kdeedu-3.3.1/kturtle/examples/fr_FR kturtle-3.3.1/kturtle/examples/
    rm -rf kdeedu-3.3.1
    kde-meta_src_unpack makefiles
}

