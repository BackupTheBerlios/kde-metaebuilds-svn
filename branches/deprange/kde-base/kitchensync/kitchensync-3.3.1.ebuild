# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="Synchronize Data with KDE"
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/libkdepim-$PV
	~kde-base/libkdenetwork-$PV
	~kde-base/libkcal-$PV"
DEPEND="$(need-version-range $PV $MAXKDEVER kde-base/libkdepim)
$(need-version-range $PV $MAXKDEVER kde-base/libkdenetwork)
$(need-version-range $PV $MAXKDEVER kde-base/libkcal)"

KMCOPYLIB="
	libkcal libkcal
	libkdenetwork libkdenetwork
	libkdepim libkdepim"
KMEXTRACTONLY="
	libkcal/
	libkdepim/
	libkdenetwork/"
