# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdegraphics
KMNOMODULE=true
KMNODOCS=true
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="SVG viewer kpart"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(deprange $PV $MAXKDEVER libksvg)"
OLDDEPEND="~kde-base/libksvg"

KMNODOC="true"
KMCOPYLIB="libksvg ksvg"
KMEXTRACTONLY="ksvg/"
KMEXTRA="ksvg/plugin"