# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="noatun-plugins/oblique"
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="Noatun auto-collatig playlist"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(deprange $PV $MAXKDEVER kde-base/noatun)	
		=sys-libs/db-4.2*"
OLDDEPEND="~kde-base/noatun-$PV =sys-libs/db-4.2*"

myconf="--with-extra-includes=/usr/include/db4.2"
PATCHES="$FILESDIR/noatun-oblique-db-location.diff"
