# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

KMNAME=kdebase
KMMODULE=kioslave
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="kioslave: the kde VFS framework - kioslave plugins present a filesystem-like view of arbitrary data"
KEYWORDS="~x86"
IUSE="ldap samba"
DEPEND="ldap? ( net-nds/openldap )
		samba? ( >=net-fs/samba-3.0.1 )
		$(need-version-range $PV $MAXKDEVER kde-base/kdesktop)" # for the kdeeject script used by the devices/mounthelper ioslave
PATCHES="$FILESDIR/remove-startkde-$PV.diff"

src_compile () {
	myconf="$myconf `use_with ldap`"
	kde-meta_src_compile
}

