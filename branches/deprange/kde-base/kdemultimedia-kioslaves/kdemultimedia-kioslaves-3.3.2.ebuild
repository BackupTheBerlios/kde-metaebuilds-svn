# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
KMMODULE=kioslave
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="kioslaves from kdemultimedia package"
KEYWORDS="~x86"
IUSE="oggvorbis flac encode"
DEPEND="$(need-version-range 3.3.1 $PV kde-base/libkcddb)
	media-sound/cdparanoia
	media-libs/taglib
	oggvorbis? ( media-libs/libvorbis )
	flac? ( media-libs/flac )
	encode? ( media-sound/lame )"
KMCOPYLIB="libkcddb libkcddb"
KMEXTRACTONLY="kdemultimedia-3.3.0/akode/configure.in.in
	libkcddb/"


src_compile() {
	use oggvorbis && myconf="$myconf --with-vorbis=/usr" || myconf="$myconf --without-vorbis"
	kde-meta_src_compile
}