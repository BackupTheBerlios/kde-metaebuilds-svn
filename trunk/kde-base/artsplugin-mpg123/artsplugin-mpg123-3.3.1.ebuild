# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
KMMODULE=mpg123_artsplugin
inherit kde-meta eutils

DESCRIPTION="aRts plugin for mpg123"
KEYWORDS="~x86"
IUSE=""

pkg_setup() {
	if ! useq arts; then
		eerror "artsplugin-mpg123 needs the USE=\"arts\" enabled and also the kdelibs compiled with the USE=\"arts\" enabled"
		die	
	fi
}

src_compile() {
	replace-flags -O3 -O2
	
	kde-meta_src_compile
}