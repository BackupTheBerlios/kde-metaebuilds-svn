# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kicker-applets/mediacontrol"
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="kicker plugin for controlling various media players"
KEYWORDS="~x86"
IUSE="xmms"
OLDDEPEND="~kde-base/kicker-$PV ~kde-base/kdeaddons-docs-kicker-applets-$PV
	xmms? ( media-sound/xmms )"
DEPEND="xmms? ( media-sound/xmms ) 
$(deprange $PV $MAXKDEVER kde-base/kicker) 
$(deprange $PV $MAXKDEVER kde-base/kdeaddons-docs-kicker-applets)"

use xmms || export ac_cv_have_xmms=no


