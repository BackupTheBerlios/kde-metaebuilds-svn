# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdebindings
KMCOPYLIB="libsmokeqt smoke/qt"
inherit kde-meta

DESCRIPTION=""
KEYWORDS="~x86"
IUSE=""
DEPEND=">=virtual/ruby-1.8 ~kde-base/smoke-$PV"
PATCHES="$FILESDIR/no-gtk-glib-check.diff"
