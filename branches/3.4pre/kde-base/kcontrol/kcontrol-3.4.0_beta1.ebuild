# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

KMNAME=kdebase
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="The KDE Control Center"
KEYWORDS="~x86"
IUSE="ssl arts opengl"
PATCHES="$FILESDIR/configure.in.in-kdm-settings.diff"

DEPEND="ssl? ( dev-libs/openssl )
	arts? ( $(deprange ${PV/3.4/1.4} ${MAXKDEVER/3.4/1.4} kde-base/arts) )
	opengl? ( virtual/opengl )
	dev-libs/libusb" # to support some logitech mice - should get a local useflag
			 # (this isn't a separate kcm but a part of the input module)
RDEPEND="${DEPEND}
$(deprange $PV $MAXKDEVER kde-base/kcminit)
$(deprange $PV $MAXKDEVER kde-base/kdebase-applnk)"

KMEXTRACTONLY="kicker/core/kicker.h
	    kwin/kwinbindings.cpp
	    kicker/core/kickerbindings.cpp
	    kicker/taskbar/taskbarbindings.cpp
	    kdesktop/kdesktopbindings.cpp
	    klipper/klipperbindings.cpp
	    kxkb/kxkbbindings.cpp
	    libkonq/"

src_compile() {
	myconf="$myconf `use_with ssl` `use_with arts` `use_with opengl gl`"
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
