# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdegraphics
KMMODULE=ksvg
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE SVG library"
KEYWORDS="~x86"
IUSE=""
DEPEND="dev-libs/fribidi"
KMNODOC="true"
KMEXTRACTONLY="ksvg/plugin/"