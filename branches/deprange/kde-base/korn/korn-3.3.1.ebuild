# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE mailbox checker"
KEYWORDS="~x86"
IUSE=""
DEPEND=""
OLDDEPEND="~kde-base/mimelib-$PV ~kde-base/libkdenetwork-$PV"
need-version-range $KM_DEPRANGE  kde-base/mimelib kde-base/libkdenetwork
KMCOPYLIB="libmimelib mimelib
	libkdenetwork libkdenetwork"
# libkcal is installed because a lot of headers are needed, but it don't have to be compiled
KMEXTRACTONLY="
	mimelib/
	libkdenetwork/"
