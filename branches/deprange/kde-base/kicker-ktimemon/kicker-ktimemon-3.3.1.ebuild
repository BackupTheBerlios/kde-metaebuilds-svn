# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kicker-applets/ktimemon"
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="kicker applet: system monitor"
KEYWORDS="~x86"
IUSE=""
DEPEND=""
OLDDEPEND="~kde-base/kicker-$PV ~kde-base/kdeaddons-docs-kicker-applets-$PV"
need-version-range $KM_DEPRANGE  kde-base/kicker kde-base/kdeaddons-docs-kicker-applets

