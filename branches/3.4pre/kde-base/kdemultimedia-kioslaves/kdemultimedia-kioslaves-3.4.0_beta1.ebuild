# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
KMMODULE=kioslave
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="kioslaves from kdemultimedia package"
KEYWORDS="~x86"
IUSE="oggvorbis flac encode"
DEPEND="$(deprange $PV $MAXKDEVER kde-base/libkcddb)
	media-sound/cdparanoia
	media-libs/taglib
	oggvorbis? ( media-libs/libvorbis )
	flac? ( media-libs/flac )
	encode? ( media-sound/lame )"
KMCOPYLIB="libkcddb libkcddb"
KMEXTRACTONLY="kdemultimedia-3.3.0/akode/configure.in.in"
KMCOMPILEONLY="libkcddb/"


src_compile() {
	use oggvorbis && myconf="$myconf --with-vorbis=/usr" || myconf="$myconf --without-vorbis"
	DO_NOT_COMPILE=libkcddb kde-meta_src_compile myconf configure
	cd $S/libkcddb && make configbase.h
	DO_NOT_COMPILE=libkcddb kde-meta_src_compile make
}
