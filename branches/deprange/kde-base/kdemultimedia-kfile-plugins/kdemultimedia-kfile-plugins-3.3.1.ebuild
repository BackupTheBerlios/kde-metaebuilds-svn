# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
KMMODULE=kfile-plugins
inherit kde-meta eutils

DESCRIPTION="kfile plugins from kdemultimedia package"
KEYWORDS="~x86"
IUSE="oggvorbis"
DEPEND="media-libs/taglib
	oggvorbis? ( media-libs/libvorbis )"

src_compile() {
	use oggvorbis	&& myconf="$myconf --with-vorbis=/usr" || myconf="$myconf --without-vorbis"
	kde-meta_src_compile
}