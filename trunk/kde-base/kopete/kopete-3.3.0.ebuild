# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdenetwork
inherit kde-meta eutils

DESCRIPTION="Library used by konqueror's file manager mode as well as kdesktop and other kde apps"
KEYWORDS="~x86"
IUSE=""
DEPEND="!net-im/kopete"

src_unpack() {
	kde-meta_src_unpack
	epatch ${FILESDIR}/3.3.0-kopete.diff
}