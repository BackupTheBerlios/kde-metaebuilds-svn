# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
inherit kde-meta eutils

DESCRIPTION="KDE Time tracker tool"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkcal-$PV
	~kde-base/libkdepim-$PV"
KMCOPYLIB="
	libkcal libkcal
	libkdepim libkdepim"
KMEXTRACTONLY="
	libkcal/
	libkdepim/"
