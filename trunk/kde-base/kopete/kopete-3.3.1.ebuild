# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdenetwork
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE multi-protocol IM client"
KEYWORDS="~x86"
IUSE="ssl"
DEPEND="!net-im/kopete"
RDEPEND="$DEPEND
	ssl? ( app-crypt/qca-tls )"
