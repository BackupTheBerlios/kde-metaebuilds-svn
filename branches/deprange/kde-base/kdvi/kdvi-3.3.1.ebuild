# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdegraphics
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE DVI viewer"
KEYWORDS="~x86"
IUSE="tetex"
OLDDEPEND="~kde-base/kviewshell-$PV"
DEPEND="
$(deprange $PV $MAXKDEVER kde-base/kviewshell)"

RDEPEND="${DEPEND}
	tetex? (
	|| ( >=app-text/tetex-2
	app-text/ptex
	app-text/cstetex
	app-text/dvipdfm )
	)"
KMCOPYLIB="libkmultipage kviewshell"
KMEXTRACTONLY="kviewshell/"