# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeedu
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE Desktop Planetarium"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(need-version-range $KM_DEPRANGE  kde-base/libkdeedu)"
OLDDEPEND="~kde-base/libkdeedu-$PV"

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
