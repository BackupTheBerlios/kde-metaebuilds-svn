# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="konq-plugins/autorefresh"
inherit kde-meta

DESCRIPTION="konqueror timed autorefresh plugin"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/konqueror-$PV ~kde-base/kdeaddons-docs-konq-plugins-$PV"

