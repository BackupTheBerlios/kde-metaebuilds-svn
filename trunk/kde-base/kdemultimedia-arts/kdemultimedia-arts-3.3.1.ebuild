# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
KMMODULE=arts
inherit kde-meta eutils

DESCRIPTION="aRts pipeline builder and other tools"
KEYWORDS="~x86"
IUSE="oggvorbis encode"
KMEXTRACTONLY="mpeglib_artsplug/configure.in.in" # needed because the artsc-config call is here
KMEXTRA="doc/artsbuilder"

pkg_setup() {
	if [ ! `use arts` ]; then
		eerror "kdemultimedia-arts needs the USE=\"alsa\" enabled."
		die	
	fi
}
