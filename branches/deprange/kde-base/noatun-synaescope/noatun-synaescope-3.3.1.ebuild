# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="noatun-plugins/configure.in.in noatun-plugins/synaescope"
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="noatun visualization plugin"
KEYWORDS="~x86"
IUSE=""
DEPEND=" >=media-libs/libsdl-1.2"
OLDDEPEND=">=media-libs/libsdl-1.2 ~kde-base/noatun-$PV"
need-version-range $KM_DEPRANGE  kde-base/noatun

myconf="--with-sdl-prefix=/usr"
