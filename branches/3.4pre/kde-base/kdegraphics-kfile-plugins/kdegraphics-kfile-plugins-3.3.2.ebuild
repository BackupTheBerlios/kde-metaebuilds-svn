# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdegraphics
KMMODULE=kfile-plugins
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="kfile plugins from kdegraphics"
KEYWORDS="~x86"
IUSE="tiff openexr"
DEPEND="tiff? ( media-libs/tiff )
	openexr? ( media-libs/openexr )"
RDEPEND="${DEPEND}
	app-text/xpdf" # needed for "pdfinfo"
KMEXTRACTONLY="kfile-plugins/ps" # installed with kghostview