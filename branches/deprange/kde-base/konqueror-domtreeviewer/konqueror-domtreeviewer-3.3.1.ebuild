# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="konq-plugins/domtreeviewer"
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="khtml plugin that displays the DOM tree"
KEYWORDS="~x86"
IUSE=""
DEPEND=""
OLDDEPEND="~kde-base/konqueror-$PV ~kde-base/kdeaddons-docs-konq-plugins-$PV"
need-version-range $KM_DEPRANGE  kde-base/konqueror kde-base/kdeaddons-docs-konq-plugins

