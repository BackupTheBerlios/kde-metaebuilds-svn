# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="konq-plugins/rellinks"
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KHTML plugin: Document Relations (back/forward/up browsing for sites which have generated page-per-chapter layout)"
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/konqueror-$PV ~kde-base/kdeaddons-docs-konq-plugins-3.3.1"
DEPEND="
$(deprange $PV $MAXKDEVER kde-base/konqueror)
$(deprange $PV $MAXKDEVER kde-base/kdeaddons-docs-konq-plugins)"
