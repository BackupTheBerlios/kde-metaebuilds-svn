# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdeutils
inherit kde-meta eutils

DESCRIPTION="KDE gpg keyring manager"
KEYWORDS="~x86"
IUSE=""

RDEPEND="$DEPEND
	app-crypt/gnupg"
