# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="konq-plugins/minitools"
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="konqueror plugin for custom tool menus"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(deprange $PV $MAXKDEVER kde-base/konqueror)
$(deprange $PV $MAXKDEVER kde-base/kdeaddons-docs-konq-plugins)"
OLDDEPEND="~kde-base/konqueror-$PV ~kde-base/kdeaddons-docs-konq-plugins-$PV"
