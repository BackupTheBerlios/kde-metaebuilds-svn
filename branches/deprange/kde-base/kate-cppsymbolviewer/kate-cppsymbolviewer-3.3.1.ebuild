# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kate/cppsymbolviewer"
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="kate plugin for viewing CPP symbols when editing source"
KEYWORDS="~x86"
IUSE=""
DEPEND=""
OLDDEPEND="~kde-base/kate-$PV ~kde-base/kdeaddons-docs-kate-plugins-$PV"
need-version-range $KM_DEPRANGE  kde-base/kate kde-base/kdeaddons-docs-kate-plugins

