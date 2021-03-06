# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdenetwork
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE remote desktp connection (RDP and VNC) cient"
KEYWORDS="~x86"
IUSE="rdesktop slp"
DEPEND=">=dev-libs/openssl-0.9.6b
	slp? ( net-libs/openslp )"
RDEPEND="${DEPEND}
	rdesktop? ( >=net-misc/rdesktop-1.3.1-r1 )"
	
src_compile() {
	myconf="$myconf `use_enable slp`"
	kde-meta_src_compile
}