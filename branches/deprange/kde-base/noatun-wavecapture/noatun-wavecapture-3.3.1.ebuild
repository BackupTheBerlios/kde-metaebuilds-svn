# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="noatun-plugins/wavecapture"
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="noatun plugin for capturing played sound into wave files"
KEYWORDS="~x86"
IUSE=""
DEPEND=""
OLDDEPEND="~kde-base/arts-1.3.1 ~kde-base/noatun-$PV"
need-version-range $KM_DEPRANGE kde-base/noatun
need-version-range 1.3.1 1.3.2 kde-base/arts

