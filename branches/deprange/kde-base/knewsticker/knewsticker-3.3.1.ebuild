# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdenetwork
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="kicker plugin: rss news ticker"
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/librss-$PV"
DEPEND="
$(deprange $PV $MAXKDEVER librss)"

KMCOPYLIB="librss librss"
KMEXTRACTONLY="librss"