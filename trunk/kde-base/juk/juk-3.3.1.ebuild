# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
inherit kde-meta eutils

DESCRIPTION="Jukebox and music manager for KDE"
KEYWORDS="~x86"
IUSE=""
DEPEND="media-libs/taglib 
	media-libs/tunepimp
	!media-sound/juk"
KMEXTRACTONLY="arts/configure.in.in"
	
pkg_setup() {
	if [ ! `use arts` ]; then
		eerror "juk needs the USE=\"alsa\" enabled."
		die	
	fi
}