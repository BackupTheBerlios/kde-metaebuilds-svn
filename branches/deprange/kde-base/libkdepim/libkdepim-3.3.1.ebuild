# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="common library for KDE PIM apps"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkcal-$PV"
KMCOPYLIB="libkcal libkcal"