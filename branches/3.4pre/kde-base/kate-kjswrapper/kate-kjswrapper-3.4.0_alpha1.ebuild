# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kate/kjswrapper"
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="javascript scripting for kate (broken?)"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(deprange $PV $MAXKDEVER kde-base/kate)
$(deprange $PV $MAXKDEVER kde-base/kdeaddons-docs-kate-plugins)
$(deprange $PV $MAXKDEVER kde-base/kjsembed)"

