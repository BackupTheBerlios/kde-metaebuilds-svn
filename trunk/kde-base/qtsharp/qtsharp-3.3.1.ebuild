# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdebindings
inherit kde-meta

DESCRIPTION=""
KEYWORDS="~x86"
IUSE=""
DEPEND="dev-dotnet/csant"
PATCHES="$FILESDIR/no-gtk-glib-check.diff"

pkg_setup() {
    ewarn "This package is considered broken by upstream. You're on your own."
    ewarn "This won't build. Portage doesn't have a csant ebuild yet."
}
