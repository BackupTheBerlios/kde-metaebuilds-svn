# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="Kicker applet - RSS news ticker"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(deprange $KM_DEPRANGE  kde-base/knewsticker)"
OLDDEPEND="~kde-base/knewsticker-$PV"


