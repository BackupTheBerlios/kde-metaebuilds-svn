# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kicker-applets/ktimemon"
inherit kde-meta

DESCRIPTION="kicker applet: system monitor"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/kicker-$PV ~kde-base/kdeaddons-docs-kicker-applets-$PV"

