# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
inherit kde-meta

DESCRIPTION="aRts plugins for various formats"
KEYWORDS="~x86"
IUSE="flac oggvorbis speex"
DEPEND="flac? ( media-libs/flac )
	oggvorbis? ( media-sound/vorbis-tools )
	speex? ( media-libs/speex !=media-libs/speex-1.1.4 )
	media-libs/libsamplerate"

src_compile() {
	use oggvorbis && myconf="$myconf --with-vorbis=/usr" || myconf="$myconf --without-vorbis"
	
	kde-meta_src_compile
}
