# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KOrganizer/KAlarm Alarm Daemon"
KEYWORDS="~x86"
IUSE=""
DEPEND=""
OLDDEPEND="~kde-base/libkcal-$PV"
need-version-range $KM_DEPRANGE  kde-base/libkcal
KMCOPYLIB="libkcal libkcal"
KMEXTRACTONLY="libkcal/"
KMEXTRA="doc/kcontrol/kalarmd"