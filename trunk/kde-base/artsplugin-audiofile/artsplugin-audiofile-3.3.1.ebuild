# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
KMMODULE=audiofile_artsplugin
inherit kde-meta eutils

DESCRIPTION="arts audiofile plugin"
KEYWORDS="~x86"
IUSE=""
DEPEND="media-libs/audiofile"

pkg_setup() {
	if [ ! `use arts` ]; then
		eerror "artsplugin-audiofile needs the USE=\"alsa\" enabled."
		die	
	fi
}