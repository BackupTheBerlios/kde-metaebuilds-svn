# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kate/make"
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="make plugin for kate"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(deprange $PV $MAXKDEVER kde-base/kate)
$(deprange $PV $MAXKDEVER kde-base/kdeaddons-docs-kate-plugins)"
OLDDEPEND="~kde-base/kate-$PV ~kde-base/kdeaddons-docs-kate-plugins-$PV"
