# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="aRts mixer gui"
KEYWORDS="~x86"
IUSE="alsa"
DEPEND="alsa? ( media-libs/alsa-lib )"
KMEXTRACTONLY="kscd/configure.in.in"

src_compile() {
	# alsa 0.9 not supported
	use alsa && myconf="$myconf --with-alsa --with-arts-alsa" || myconf="$myconf --without-alsa --disable-alsa"
	
	kde-meta_src_compile
}