# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="kdemultimedia - merge this to pull in all kdemultimedia-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE="arts"

RDEPEND="~kde-base/akode-$PV
	arts? ( ~kde-base/artsplugin-audiofile-3.3.1 )
	arts? ( ~kde-base/artsplugin-mpeglib-3.3.1 )
	arts? ( ~kde-base/artsplugin-mpg123-3.3.1 )
	arts? ( ~kde-base/artsplugin-xine-3.3.1 )
	arts? ( ~kde-base/juk-$PV )
	arts? ( ~kde-base/kaboodle-3.3.1 )
	~kde-base/kaudiocreator-$PV
	arts? ( ~kde-base/kdemultimedia-arts-$PV )
	~kde-base/kdemultimedia-kappfinder-data-3.3.1
	~kde-base/kdemultimedia-kfile-plugins-3.3.1
	~kde-base/kdemultimedia-kioslaves-$PV
	~kde-base/kmid-3.3.1
	~kde-base/kmix-$PV
	arts? ( ~kde-base/krec-3.3.1 )
	~kde-base/kscd-3.3.1
	~kde-base/libkcddb-3.3.1
	~kde-base/mpeglib-3.3.1
	arts? ( ~kde-base/noatun-$PV )"