# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
inherit kde-meta eutils

DESCRIPTION="KDE mailbox checker"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/mimelib-$PV ~kde-base/libkdenetwork-$PV"
KMCOPYLIB="libmimelib mimelib
	libkdenetwork libkdenetwork"
# libkcal is installed because a lot of headers are needed, but it don't have to be compiled
KMEXTRACTONLY="
	mimelib/
	libkdenetwork/"
