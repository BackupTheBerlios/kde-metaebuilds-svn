# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="noatun-plugins/alarm"
inherit kde-meta

DESCRIPTION="noatun alarm plugin"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/noatun-$PV"

