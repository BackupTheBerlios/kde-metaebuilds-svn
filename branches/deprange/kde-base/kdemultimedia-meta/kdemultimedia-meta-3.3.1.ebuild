# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.1

inherit kde-functions
DESCRIPTION="kdemultimedia - merge this to pull in all kdemultimedia-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE="arts"

RDEPEND="arts? ( $(need-version-range $PV $MAXKDEVER kde-base/artsplugin-audiofile)
		$(need-version-range $PV $MAXKDEVER kde-base/artsplugin-mpeglib)
		$(need-version-range $PV $MAXKDEVER kde-base/artsplugin-mpg123)
		$(need-version-range $PV $MAXKDEVER kde-base/artsplugin-xine)
		$(need-version-range $PV $MAXKDEVER kde-base/juk)
		$(need-version-range $PV $MAXKDEVER kde-base/kaboodle)
		$(need-version-range $PV $MAXKDEVER kde-base/kdemultimedia-arts)
		$(need-version-range $PV $MAXKDEVER kde-base/krec)
		$(need-version-range $PV $MAXKDEVER kde-base/noatun) )
	$(need-version-range $PV $MAXKDEVER kde-base/akode)
	$(need-version-range $PV $MAXKDEVER kde-base/kaudiocreator)
	$(need-version-range $PV $MAXKDEVER kde-base/kdemultimedia-kappfinder-data)
	$(need-version-range $PV $MAXKDEVER kde-base/kdemultimedia-kfile-plugins)
	$(need-version-range $PV $MAXKDEVER kde-base/kdemultimedia-kioslaves)
	$(need-version-range $PV $MAXKDEVER kde-base/kmid)
	$(need-version-range $PV $MAXKDEVER kde-base/kmix)
	$(need-version-range $PV $MAXKDEVER kde-base/kscd)
	$(need-version-range $PV $MAXKDEVER kde-base/libkcddb)
	$(need-version-range $PV $MAXKDEVER kde-base/mpeglib)"
