# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kate/modeline"
inherit kde-meta

DESCRIPTION="kate plugin: set document settings based on vim or emacs plugins"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/kate-$PV ~kde-base/kdeaddons-docs-kate-plugins-$PV"

