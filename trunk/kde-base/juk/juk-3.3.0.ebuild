# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
inherit kde-meta eutils

DESCRIPTION="Library used by konqueror's file manager mode as well as kdesktop
and other kde apps"
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