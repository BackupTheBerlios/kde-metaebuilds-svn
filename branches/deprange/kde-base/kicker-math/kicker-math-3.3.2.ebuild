# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kicker-applets/math"
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="kicker applet evaluating math expressions"
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/kicker-$PV ~kde-base/kdeaddons-docs-kicker-applets-3.3.1"
DEPEND="
$(need-version-range $PV $MAXKDEVER kde-base/kicker)
$(need-version-range 3.3.1 $PV kde-base/kdeaddons-docs-kicker-applets)"


