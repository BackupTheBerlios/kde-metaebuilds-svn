# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
inherit kde-meta eutils

DESCRIPTION="KOrganizer/KAlarm Alarm Daemon"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkcal-$PV"
KMCOPYLIB="libkcal libkcal"
KMEXTRACTONLY="libkcal/"
KMEXTRA="doc/kcontrol/kalarmd"