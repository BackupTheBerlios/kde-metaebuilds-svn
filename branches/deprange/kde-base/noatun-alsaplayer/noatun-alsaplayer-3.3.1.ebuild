# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="noatun-plugins/alsaplayer"
inherit kde-meta

DESCRIPTION="noatun alsaplayer plugin"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/arts-${PV//3.3/1.3} ~kde-base/noatun-$PV"

