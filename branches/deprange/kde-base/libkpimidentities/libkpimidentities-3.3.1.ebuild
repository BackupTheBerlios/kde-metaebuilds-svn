# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
inherit kde-meta eutils

DESCRIPTION="KDE PIM identities library"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/certmanager-$PV ~kde-base/libkdepim-$PV"
KMCOPYLIB="
	libkleopatra certmanager/lib/ 
	libkdepim libkdepim/"
KMEXTRACTONLY="
	libkdepim/ 
	certmanager/"
