# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdegraphics
KMNOMODULE=true
KMNODOCS=true
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="SVG viewer kpart"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(deprange $PV $MAXKDEVER  kde)"
OLDDEPEND="~kde-base/libksvg"

KMNODOC="true"
KMCOPYLIB="libksvg ksvg"
KMEXTRACTONLY="ksvg/"
KMEXTRA="ksvg/plugin"