# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMMODULE=kscreensaver
KMNAME=kdeartwork
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION=""
KEYWORDS="~x86"
IUSE="opengl xscreensaver"
DEPEND="$(deprange $PV $MAXKDEVER kde-base/kscreensaver)
	opengl? ( virtual/opengl )
	!ppc64? ( xscreensaver? ( x11-misc/xscreensaver ) )"

src_unpack() {
	kde-meta_src_unpack unpack
	sed -ie "s:X11R6/lib\(/lib\)\?:lib:g" kscreensaver/kxsconfig/Makefile.am
	kde-meta_src_unpack makefiles
}

src_compile() {
	myconf="$myconf --with-dpms $(use_with opengl gl)"
        kde-meta_src_compile
}
