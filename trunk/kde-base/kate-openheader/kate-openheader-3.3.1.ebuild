# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kate/openheader"
inherit kde-meta

DESCRIPTION="kate plugin that opens the .h header corresponding to the .c[pp] file being edited"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/kate-$PV ~kde-base/kdeaddons-docs-kate-plugins-$PV"

