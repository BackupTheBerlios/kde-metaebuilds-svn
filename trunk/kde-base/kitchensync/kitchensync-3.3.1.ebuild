# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
inherit kde-meta eutils

DESCRIPTION="Synchronize Data with KDE"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdepim-$PV
	~kde-base/libkdenetwork-$PV
	~kde-base/libkcal-$PV"
KMCOPYLIB="
	libkcal libkcal
	libkdenetwork libkdenetwork
	libkdepim libkdepim"
KMEXTRACTONLY="
	libkcal/
	libkdepim/
	libkdenetwork/"