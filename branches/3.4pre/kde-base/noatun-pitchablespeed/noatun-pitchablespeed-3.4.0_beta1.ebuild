# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="noatun-plugins/pitchablespeed"
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="noatun plugin for changing playing speed of audio"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(deprange $PV $MAXKDEVER kde-base/noatun)
$(deprange  ${PV/3.4/1.4} ${MAXKDEVER/3.4/1.4} kde-base/arts)"
OLDDEPEND="~kde-base/arts-1.3.1 ~kde-base/noatun-$PV"


