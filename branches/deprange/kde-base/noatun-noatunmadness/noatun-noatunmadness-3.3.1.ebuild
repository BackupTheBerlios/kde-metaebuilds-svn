# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="noatun-plugins/noatunmadness"
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="noatun visualizatin plugin"
KEYWORDS="~x86"
IUSE="svga"

# in case something from kdelibs linked against svgalib,
# we might link against it too. this isn't pretty by any means.
OLDDEPEND="~kde-base/noatun-$PV
	svga? ( media-libs/svgalib )" 
DEPEND="$(need-version-range $KM_DEPRANGE kde-base/noatun)
		svga? ( media-libs/svgalib )"

