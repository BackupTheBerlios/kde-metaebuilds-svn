# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE CD ripper and audio encoder frontend"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(deprange $PV $MAXKDEVER kde-base/libkcddb)
	media-sound/cdparanoia"
KMCOPYLIB="libkcddb libkcddb"
KMCOMPILEONLY="kscd/libwm/
	libkcddb/"
	
src_compile () {
	DO_NOT_COMPILE=libkcddb kde-meta_src_compile myconf configure
	cd $S/libkcddb && make configbase.h
	DO_NOT_COMPILE=libkcddb kde-meta_src_compile make
}
