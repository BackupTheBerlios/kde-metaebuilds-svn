# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
inherit kde-meta eutils

DESCRIPTION="Library used by konqueror's file manager mode as well as kdesktop
and other kde apps"
KEYWORDS="~x86"
IUSE="xine audiofile"
RDEPEND="${DEPEND}
	~kde-base/kdemultimedia-arts-$PV
	~kde-base/artsplugin-mpeglib-$PV
	~kde-base/artsplugin-mpg123-$PV
	xine? ( ~kde-base/artsplugin-xine-$PV )
	audiofike? ( ~kde-base/artsplugin-audiofile-$PV )"
KMEXTRACTONLY="arts/"

pkg_setup() {
	if [ ! `use arts` ]; then
		eerror "kaboodle needs the USE=\"alsa\" enabled."
		die	
	fi
}