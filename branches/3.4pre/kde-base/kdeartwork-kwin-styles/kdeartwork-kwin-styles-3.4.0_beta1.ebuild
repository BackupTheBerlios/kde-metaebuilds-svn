# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMMODULE=kwin-styles
KMNAME=kdeartwork
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION=""
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/kwin-$PV"
DEPEND="
$(deprange $PV $MAXKDEVER kde-base/kwin)"

