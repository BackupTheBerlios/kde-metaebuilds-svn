# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
KMMODULE=mpeglib_artsplug
inherit kde-meta eutils

DESCRIPTION="mpeglib plugin for arts"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/mpeglib-$PV"
KMCOPYLIB="libmpeg mpeglib/lib/"
KMEXTRACTONLY="mpeglib/"

pkg_setup() {
	if ! useq arts; then
		eerror "artsplugin-mpeglib needs the USE=\"arts\" enabled and also the kdelibs compiled with the USE=\"arts\" enabled"
		die	
	fi
}