# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
inherit kde-meta eutils

DESCRIPTION="A command line interface to KDE calendars"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkcal-$PV ~kde-base/libkdepim-$PV"
KMCOPYLIB="libkcal libkcal
	libkdepim libkdepim"
# libkcal is installed because a lot of headers are needed, but it don't have to be compiled
KMEXTRACTONLY="
	libkcal/
	libkdepim/"

