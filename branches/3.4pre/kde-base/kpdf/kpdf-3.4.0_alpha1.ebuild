# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdegraphics
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="kpdf, a kde pdf viewer based on xpdf"
KEYWORDS="~x86"
IUSE=""
KMEXTRA="kfile-plugins/pdf"
PATCHES="${FILESDIR}/post-3.3.1-kdegraphics.diff"