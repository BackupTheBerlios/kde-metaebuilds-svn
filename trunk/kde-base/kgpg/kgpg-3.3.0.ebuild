# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdeutils
inherit kde-meta eutils

DESCRIPTION="Kgpg - Simple gui for gpg"
KEYWORDS="~x86"
IUSE=""

RDEPEND="$DEPEND
	app-crypt/gnupg"
