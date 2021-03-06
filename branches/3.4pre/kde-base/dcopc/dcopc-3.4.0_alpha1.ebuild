# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdebindings
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="C bindings for DCOP"
KEYWORDS="-*" # broken according to upstream - 3.4a1 README=
DEPEND="=dev-libs/glib-1.2*
	=x11-libs/gtk+-1.2*"

# Make sure to compile this
PATCHES="$FILESDIR/remove-configure.diff"	

