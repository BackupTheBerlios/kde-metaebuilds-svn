# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="konq-plugins/arkplugin"
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="Ark (kde archiver) plugin for konqueror"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/konqueror-$PV ~kde-base/kdeaddons-docs-konq-plugins-$PV"

