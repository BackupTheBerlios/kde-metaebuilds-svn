# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE media player"
KEYWORDS="~x86"
IUSE="xine audiofile"
RDEPEND="${DEPEND}
$(deprange $PV $MAXKDEVER kde-base/kdemultimedia-arts)
$(deprange 3.3.1 $PV kde-base/artsplugin-mpeglib)
$(deprange 3.3.1 $PV kde-base/artsplugin-mpg123)
	xine? ( $(deprange 3.3.1 $PV kde-base/artsplugin-xine) )
	audiofile? ( $(deprange 3.3.1 $PV kde-base/artsplugin-audiofile) )"
KMCOPYLIB="
	libartsgui_kde arts/gui/kde/
	libartsgui arts/gui/common/
	libartsmodules arts/modules/"
KMEXTRACTONLY="arts/"

pkg_setup() {
	if ! useq arts; then
		eerror "${PN} needs the USE=\"arts\" enabled and also the kdelibs compiled with the USE=\"arts\" enabled"
		die	
	fi
}