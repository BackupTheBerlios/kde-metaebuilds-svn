# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE CD ripper and audio encoder frontend"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(need-version-range 3.3.1 $PV kde-base/libkcddb)
	media-sound/cdparanoia"
KMCOPYLIB="libkcddb libkcddb"
KMCOMPILEONLY="kscd/libwm/"
KMEXTRACTONLY="libkcddb/"