# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeedu
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE: periodic table of the elements"
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/libkdeedu-3.3.1"
DEPEND="
$(deprange $PV $MAXKDEVER kde-base/libkdeedu)"


KMEXTRACTONLY="libkdeedu/kdeeduplot"
KMCOPYLIB="libkdeeduplot libkdeedu/kdeeduplot"

