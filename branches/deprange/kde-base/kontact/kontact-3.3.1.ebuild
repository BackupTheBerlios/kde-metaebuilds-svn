# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE personal information manager"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdepim-$PV"
KMCOPYLIB="libkdepim libkdepim/"
KMEXTRACTONLY="libkdepim/
	kontact/plugins/"
KMEXTRA="
	kontact/plugins/newsticker/
	kontact/plugins/summary/
	kontact/plugins/weather/"
# We remove some plugins that are related to external kdepim's programs, because they needs also libs from korganizer, kpilot etc... so to emerge kontact we'll need also ALL the other programs, it's better to emerge the kontact's plugins in the ebuild of its program

