# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kicker-applets/kbinaryclock"
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="kicker applet displaying a clock in binary"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(deprange $PV $MAXKDEVER kde-base/kicker)
$(deprange $PV $MAXKDEVER kde-base/kdeaddons-docs-kicker-applets)"
OLDDEPEND="~kde-base/kicker-$PV ~kde-base/kdeaddons-docs-kicker-applets-$PV"


