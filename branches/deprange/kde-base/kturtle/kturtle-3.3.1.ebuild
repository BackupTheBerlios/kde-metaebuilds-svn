# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeedu
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE: Educational programming environment using the Logo programming language"
KEYWORDS="~x86"
IUSE=""
DEPEND=""

# fix for bug 62510 - weird character on JFS
KMTARPARAMS="--exclude=kdeedu-$PV/kturtle/examples/fr_FR"
src_unpack() {
    kde-meta_src_unpack unpack
    cd $WORKDIR
    bzip2 -dc $DISTDIR/${myP}.tar.bz2 | tar xf - kdeedu-$PV/kturtle/examples/fr_FR
    mv kdeedu-$PV/kturtle/examples/fr_FR kturtle-$PV/kturtle/examples/
    rm -rf kdeedu-$PV
    kde-meta_src_unpack makefiles
}

