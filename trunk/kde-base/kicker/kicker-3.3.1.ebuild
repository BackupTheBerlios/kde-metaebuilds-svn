# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

KMNAME=kdebase
inherit kde-meta eutils

DESCRIPTION="Library used by konqueror's file manager mode as well as kdesktop and other kde apps"
KEYWORDS="~x86"
IUSE=""
PATCHES="$FILESDIR/remove-startkde-$PV.diff $FILESDIR/applets-configure.in.in.diff"
DEPEND="$DEPEND ~kde-base/libkonq-$PV"
KMCOPYLIB="libkonq libkonq"
KMEXTRACTONLY="libkonq"

# Add test from kioslaves, which decides whether to compile the devices:/ ioslave and its kicker applet frontend
# based on the OS
#src_unpack() {
#    kde-meta_src_unpack
#    cp $FILESDIR/configure.in.in-devices $S/kicker/applets/configure.in.in
#}
