# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="konq-plugins/babelfish"
inherit kde-meta

DESCRIPTION="konqueror plugin for translating pages with babelfish"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/konqueror-$PV ~kde-base/kdeaddons-docs-konq-plugins-$PV"

