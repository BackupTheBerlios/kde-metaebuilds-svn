# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA=kaddressbook-plugins/xxports/kworldclock
inherit kde-meta

DESCRIPTION="KAB KWorldClock XXPort Plugin"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/kaddressbook-$PV"

