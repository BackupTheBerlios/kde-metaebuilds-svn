# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="The Lean KDE Media Player"
KEYWORDS="~x86"
IUSE="xine audiofile"

OLDRDEPEND="
	~kde-base/kdemultimedia-arts-$PV
	~kde-base/artsplugin-mpeglib-$PV
	~kde-base/artsplugin-mpg123-$PV
	xine? ( ~kde-base/artsplugin-xine-$PV )
	audiofile? ( ~kde-base/artsplugin-audiofile-$PV )"
RDEPEND="$(need-version-range $PV $MAXKDEVER kde-base/kdemultimedia-arts)
$(need-version-range $PV $MAXKDEVER kde-base/artsplugin-mpeglib)
$(need-version-range $PV $MAXKDEVER kde-base/artsplugin-mpg123)
	xine? ( $(need-version-range $PV $MAXKDEVER kde-base/artsplugin-xine) )
	audiofile? ( $(need-version-range $PV $MAXKDEVER kde-base/artsplugin-audiofile) )"
	
KMEXTRACTONLY="arts/"

pkg_setup() {
	if ! useq arts; then
		eerror "${PN} needs the USE=\"arts\" enabled and also the kdelibs compiled with the USE=\"arts\" enabled"
		die	
	fi
}