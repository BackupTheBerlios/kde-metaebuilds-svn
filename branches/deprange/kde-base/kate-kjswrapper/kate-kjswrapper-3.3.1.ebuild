# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kate/kjswrapper"
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="javascript scripting for kate (broken?)"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/kate-$PV ~kde-base/kdeaddons-docs-kate-plugins-$PV
	~kde-base/kjsembed-$PV"

