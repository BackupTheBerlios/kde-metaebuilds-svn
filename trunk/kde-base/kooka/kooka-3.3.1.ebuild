# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdegraphics
inherit kde-meta eutils

DESCRIPTION="Kooka is a KDE application which provides access to scanner hardware"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkscan-$PV"
KMCOPYLIB="libkscan libkscan"
KMEXTRACTONLY="libkscan"