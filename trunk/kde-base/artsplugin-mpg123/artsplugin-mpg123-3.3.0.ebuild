# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
KMMODULE=mpg123_artsplugin
inherit kde-meta eutils

DESCRIPTION="Library used by konqueror's file manager mode as well as kdesktop
and other kde apps"
KEYWORDS="~x86"
IUSE=""

pkg_setup() {
	if [ ! `use arts` ]; then
		eerror "artsplugin-mpg123 needs the USE=\"alsa\" enabled."
		die	
	fi
}

src_compile() {
	replace-flags -O3 -O2
	
	kde_src_compile
}