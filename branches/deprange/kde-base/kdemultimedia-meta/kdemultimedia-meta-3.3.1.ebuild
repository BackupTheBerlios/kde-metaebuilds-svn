# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KDEMAXVER=3.3.1

DESCRIPTION="kdemultimedia - merge this to pull in all kdemultimedia-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE="arts"

RDEPEND="~kde-base/akode-$PV
	arts? ( ~kde-base/artsplugin-audiofile-$PV )
	arts? ( ~kde-base/artsplugin-mpeglib-$PV )
	arts? ( ~kde-base/artsplugin-mpg123-$PV )
	arts? ( ~kde-base/artsplugin-xine-$PV )
	arts? ( ~kde-base/juk-$PV )
	arts? ( ~kde-base/kaboodle-$PV )
	~kde-base/kaudiocreator-$PV
	arts? ( ~kde-base/kdemultimedia-arts-$PV )
	~kde-base/kdemultimedia-kappfinder-data-$PV
	~kde-base/kdemultimedia-kfile-plugins-$PV
	~kde-base/kdemultimedia-kioslaves-$PV
	~kde-base/kmid-$PV
	~kde-base/kmix-$PV
	arts? ( ~kde-base/krec-$PV )
	~kde-base/kscd-$PV
	~kde-base/libkcddb-$PV
	~kde-base/mpeglib-$PV
	arts? ( ~kde-base/noatun-$PV )"