# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdebindings
KM_MAKEFILESREV=1
inherit kde-meta

DESCRIPTION="KDE javascript parser and embedder"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/kwin-$PV"
PATCHES="$FILESDIR/no-gtk-glib-check.diff"

# Probably missing some deps, too
