# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="noatun-plugins/luckytag"
inherit kde-meta

DESCRIPTION="noatun plugin that guesses tag values (author, title, ...) from filenames"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/noatun-$PV"

