# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdesdk
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KBabel - An advanced PO file editor"
KEYWORDS="~x86"
IUSE=""

DEPEND="sys-devel/flex"