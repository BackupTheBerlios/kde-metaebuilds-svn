# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kfile-plugins/lnk"
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="kfile plugin for Windows .lnk files and command-line tool for exctracting target URLs from these files"
KEYWORDS="~x86"
IUSE=""
DEPEND=""

