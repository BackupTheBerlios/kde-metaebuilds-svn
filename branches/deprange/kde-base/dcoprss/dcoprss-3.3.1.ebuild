# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdenetwork
inherit kde-meta eutils

DESCRIPTION="KDE: RSS server and client for DCOP"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/librss"
KMCOPYLIB="librss librss"
KMEXTRACTONLY="librss"