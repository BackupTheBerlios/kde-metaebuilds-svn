# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdeutils
inherit kde-meta eutils

DESCRIPTION="KHexEdit - KDE hex editor"
KEYWORDS="~x86"
IUSE=""

PATCHES="$FILESDIR/khexedit-configure-magic.diff"