# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

KMNAME=kdebase
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="The KDE Control Center"
KEYWORDS="~x86"
IUSE="ssl arts"
PATCHES="$FILESDIR/remove-startkde-$PV.diff $FILESDIR/configure.in.in-kdm-settings.diff"
DEPEND="ssl? ( dev-libs/openssl )
	arts? ( ~kde-base/arts-${PV//3.3/1.3} )"
RDEPEND="${DEPEND}
	~kde-base/kcminit-$PV
	~kde-base/kdebase-applnk-$PV"
KMEXTRACTONLY="kicker/core/kicker.h
	    kwin/kwinbindings.cpp
	    kicker/core/kickerbindings.cpp
	    kicker/taskbar/taskbarbindings.cpp
	    kdesktop/kdesktopbindings.cpp
	    klipper/klipperbindings.cpp
	    kxkb/kxkbbindings.cpp
	    libkonq/"

src_compile() {
	myconf="$myconf `use_with ssl` `use_with arts`"
	kde-meta_src_compile
}
	
src_install() {
	kde-meta_src_install

	# kcontrol modules
	cd ${D}/${KDEDIR}/etc/xdg/menus
	ln -s default_kde-settings.menu kde-settings.menu
	ln -s default_kde-information.menu kde-information.menu
	ln -s default_kde-screensavers.menu kde-screensavers.menu
}