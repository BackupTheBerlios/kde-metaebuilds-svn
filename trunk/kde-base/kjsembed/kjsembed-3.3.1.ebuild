# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdebindings
inherit kde-meta

DESCRIPTION=""
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/kwin-$PV"
PATCHES="$FILESDIR/no-gtk-glib-check.diff"

# Probably missing some deps, too
