# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kdemultimedia - merge this to pull in all kdemultimedia-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE="arts"

RDEPEND="arts? ( $(deprange 3.3.1 $PV kde-base/artsplugin-audiofile)
		$(deprange 3.3.1 $PV kde-base/artsplugin-mpeglib)
		$(deprange 3.3.1 $PV kde-base/artsplugin-mpg123)
		$(deprange 3.3.1 $PV kde-base/artsplugin-xine)
		$(deprange $PV $MAXKDEVER kde-base/juk)
		$(deprange 3.3.1 $PV kde-base/kaboodle)
		$(deprange $PV $MAXKDEVER kde-base/kaudiocreator)
		$(deprange $PV $MAXKDEVER kde-base/akode)
		$(deprange $PV $MAXKDEVER kde-base/kdemultimedia-arts)
		$(deprange 3.3.1 $PV kde-base/krec)
		$(deprange $PV $MAXKDEVER kde-base/noatun) )
	$(deprange 3.3.1 $PV kde-base/kdemultimedia-kappfinder-data)
	$(deprange 3.3.1 $PV kde-base/kdemultimedia-kfile-plugins)
	$(deprange $PV $MAXKDEVER kde-base/kdemultimedia-kioslaves)
	$(deprange 3.3.1 $PV kde-base/kmid)
	$(deprange $PV $MAXKDEVER kde-base/kmix)
	$(deprange $PV $MAXKDEVER kde-base/kscd)
	$(deprange 3.3.1 $PV kde-base/libkcddb)
	$(deprange 3.3.1 $PV kde-base/mpeglib)"
