# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="konq-plugins/sidebar"
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="konqueror sidebar plugin"
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/konqueror-$PV ~kde-base/kdeaddons-docs-konq-plugins-3.3.1"
DEPEND="
$(deprange $PV $MAXKDEVER kde-base/konqueror)
$(deprange 3.3.1 $PV kde-base/kdeaddons-docs-konq-plugins)"
