# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
KMMODULE=xine_artsplugin
inherit kde-meta eutils

DESCRIPTION="arts xine plugin"
KEYWORDS="~x86"
IUSE=""
DEPEND=">=media-libs/xine-lib-1_beta12"

pkg_setup() {
	if ! useq arts; then
		eerror "artsplugin-xine needs the USE=\"arts\" enabled and also the kdelibs compiled with the USE=\"arts\" enabled"
		die	
	fi
}