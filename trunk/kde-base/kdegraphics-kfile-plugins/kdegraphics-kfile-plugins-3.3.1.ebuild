# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdegraphics
KMMODULE=kfile-plugins
inherit kde-meta eutils

DESCRIPTION="Library used by konqueror's file manager mode as well as kdesktop and other kde apps"
KEYWORDS="~x86"
IUSE="tiff openexr"
DEPEND="tiff? ( media-libs/tiff )
	openexr? ( media-libs/openexr )"
RDEPEND="${DEPEND}
	app-text/xpdf" # needed for "pdfinfo"
KMEXTRACTONLY="kfile-plugins/ps" # installed with kghostview