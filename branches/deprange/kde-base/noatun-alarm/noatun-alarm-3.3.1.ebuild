# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="noatun-plugins/alarm"
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="noatun alarm plugin"
KEYWORDS="~x86"
IUSE=""
DEPEND=""
OLDDEPEND="~kde-base/noatun-$PV"
need-version-range $KM_DEPRANGE  kde-base/noatun

