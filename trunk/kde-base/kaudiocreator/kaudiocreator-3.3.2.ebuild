# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
inherit kde-meta eutils

DESCRIPTION="KDE CD ripper and audio encoder frontend"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkcddb-3.3.1
	media-sound/cdparanoia"
KMCOPYLIB="libkcddb libkcddb"
KMCOMPILEONLY="kscd/libwm/"
KMEXTRACTONLY="libkcddb/"