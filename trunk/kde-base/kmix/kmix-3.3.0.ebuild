# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
inherit kde-meta eutils

DESCRIPTION="Library used by konqueror's file manager mode as well as kdesktop
and other kde apps"
KEYWORDS="~x86"
IUSE="alsa"
DEPEND="alsa? ( media-libs/alsa-lib )"
KMEXTRACTONLY="kscd/configure.in.in"

src_compile() {
	# alsa 0.9 not supported
	use alsa && myconf="$myconf --with-alsa --with-arts-alsa" || myconf="$myconf --without-alsa --disable-alsa"
	
	kde_src_compile
}