# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
inherit kde-meta eutils

DESCRIPTION="Library used by konqueror's file manager mode as well as kdesktop
and other kde apps"
KEYWORDS="~x86"
IUSE="oggvorbis encode"
DEPEND="
	~kde-base/kdemultimedia-arts-$PV
	oggvorbis? ( media-libs/libvorbis )
	encode? ( media-sound/lame )"
KMCOPYLIB="libartsgui_kde arts/gui/kde/
	libartscontrolsupport arts/tools/"
KMEXTRACTONLY="
	arts/
	kioslave/audiocd/configure.in.in"

pkg_setup() {
	if [ ! `use arts` ]; then
		eerror "krec needs the USE=\"alsa\" enabled."
		die	
	fi
}

src_compile() {
	use oggvorbis && myconf="$myconf --with-vorbis=/usr" || myconf="$myconf --without-vorbis"
	use encode && myconf="$myconf --with-lame=/usr" || myconf="$myconf --without-lame"
	kde-meta_src_compile
}