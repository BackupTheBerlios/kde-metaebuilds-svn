# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeedu
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE: KLatin - a program to help revise Latin"
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/libkdeedu-$PV"
DEPEND="
$(deprange $PV $MAXKDEVER kde-base/libkdeedu)"


KMEXTRACTONLY="libkdeedu/kdeeducore"
KMCOPYLIB="libkdeeducore libkdeedu/kdeeducore"

