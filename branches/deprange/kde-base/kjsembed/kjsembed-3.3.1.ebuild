# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdebindings
KM_MAKEFILESREV=1
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE javascript parser and embedder"
KEYWORDS="~x86"
IUSE=""
DEPEND=""
OLDDEPEND="~kde-base/kwin-$PV"
need-version-range $KM_DEPRANGE  kde-base/kwin
PATCHES="$FILESDIR/no-gtk-glib-check.diff"

# Probably missing some deps, too
