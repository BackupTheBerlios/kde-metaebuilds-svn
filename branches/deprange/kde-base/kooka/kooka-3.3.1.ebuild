# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdegraphics
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="Kooka is a KDE application which provides access to scanner hardware"
KEYWORDS="~x86"
IUSE=""
DEPEND=""
OLDDEPEND="~kde-base/libkscan-$PV"
need-version-range $KM_DEPRANGE  kde-base/libkscan
KMCOPYLIB="libkscan libkscan"
KMEXTRACTONLY="libkscan"