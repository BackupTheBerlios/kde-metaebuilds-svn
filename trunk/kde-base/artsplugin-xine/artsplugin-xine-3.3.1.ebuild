# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
KMMODULE=xine_artsplugin
inherit kde-meta eutils

DESCRIPTION="Library used by konqueror's file manager mode as well as kdesktop
and other kde apps"
KEYWORDS="~x86"
IUSE=""
DEPEND=">=media-libs/xine-lib-1_beta12"

pkg_setup() {
	if [ ! `use arts` ]; then
		eerror "artsplugin-xine needs the USE=\"alsa\" enabled."
		die	
	fi
}