# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="noatun-plugins/noatunmadness"
inherit kde-meta

DESCRIPTION="noatun visualizatin plugin"
KEYWORDS="~x86"
IUSE="svga"
DEPEND="~kde-base/noatun-$PV
	svga? ( media-libs/svgalib )" # in case something from kdelibs linked against svgalib,
				      # we might link against it too. this isn't pretty by any means.

