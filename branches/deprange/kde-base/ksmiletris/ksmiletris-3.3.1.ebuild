# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdegames
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE SmileTris"
KEYWORDS="~x86"
IUSE=""
DEPEND=""
OLDDEPEND="~kde-base/libkdegames-$PV"
need-version-range $KM_DEPRANGE  kde-base/libkdegames

KMEXTRACTONLY=libkdegames
KMCOPYLIB="libkdegames libkdegames"
