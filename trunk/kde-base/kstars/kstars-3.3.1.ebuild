# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeedu
inherit kde-meta

DESCRIPTION=""
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdeedu-$PV"

KMEXTRACTONLY="libkdeedu/extdate libkdeedu/kdeeduplot"
KMCOPYLIB="libextdate libkdeedu/extdate
	    libkdeeduplot libkdeedu/kdeeduplot"

src_unpack () {
    kde-meta_src_unpack
    cd $S
    use sparc && epatch "$FILESDIR/kdeedu-sparc.patch"
    use ppc && epatch "$FILESDIR/kdeedu-sparc.patch"
    use ppc64 && epatch "$FILESDIR/kdeedu-sparc.patch"
}