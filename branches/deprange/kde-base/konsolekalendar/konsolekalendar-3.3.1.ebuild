# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="A command line interface to KDE calendars"
KEYWORDS="~x86"
IUSE=""
DEPEND=""
OLDDEPEND="~kde-base/libkcal-$PV ~kde-base/libkdepim-$PV"
need-version-range $KM_DEPRANGE  kde-base/libkcal kde-base/libkdepim
KMCOPYLIB="libkcal libkcal
	libkdepim libkdepim"
# libkcal is installed because a lot of headers are needed, but it don't have to be compiled
KMEXTRACTONLY="
	libkcal/
	libkdepim/"

