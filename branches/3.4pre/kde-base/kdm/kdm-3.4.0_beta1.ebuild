# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

KMNAME=kdebase
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE login manager, similar to xdm and gdm"
KEYWORDS="~x86"
IUSE="pam"

KMEXTRA="kdmlib/"
KMEXTRACTONLY="libkonq/konq_defaults.h"
KMCOMPILEONLY="kcontrol/background"
DEPEND="$DEPEND 
	pam? ( sys-libs/pam $(deprange $PV $MAXKDEVER kde-base/kdebase-pam) )
	$(deprange $PV $MAXKDEVER kde-base/kcontrol)"
	# Requires the desktop background settings and kdm modules,
	# so until we separate the kcontrol modules into separate ebuilds :-),
	# there's a dep here


src_compile() {
	use pam \
		&& myconf="$myconf --with-pam=yes" \
		|| myconf="$myconf --with-pam=no --with-shadow"

	kde-meta_src_compile myconf configure
	kde_remove_flag kdm/kfrontend -fomit-frame-pointer
	kde-meta_src_compile make
}

src_install() {
	kde-meta_src_install
	cd ${S}/kdm && make DESTDIR=${D} GENKDMCONF_FLAGS="--no-old --no-backup" install

	# We tell kdm to /use session files from /usr/share/xsessions.
	# I've removed some other kdmrc mods from here, since it's not clear why
	# the default aren't ok (and I'm not sure about the benefits of using
	# the xdm configfiles under /etc/X11 instead of our own ones),
	# and it's the Gentoo Way to avoid modifying upstream behaviour.
	# Tell me if you don't like this. --danarmak
	cd ${D}/${KDEDIR}/share/config/kdm || die
	sed -i -e "s:#SessionsDirs=:SessionsDirs=/usr/share/xsessions\n#SessionsDirs=:" kdmrc
	
	# Install a default user icon to prevent kdm from logging an error every time it runs.
	cd ${D}/${KDEDIR}/share/apps/kdm
	mkdir faces
	cp pics/users/default1.png faces/.default.face.icon
}

