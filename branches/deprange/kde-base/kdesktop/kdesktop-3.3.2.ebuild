# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

KMNAME=kdebase
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="The KDE desktop"
KEYWORDS="~x86"
IUSE=""
PATCHES="$FILESDIR/remove-startkde-$PV.diff"
DEPEND="$DEPEND 
		~kde-base/libkonq-3.3.1
		~kde-base/kdm-$PV
		~kde-base/kcontrol-$PV" # Requires the desktop background settings module, 
					# so until we separate the kcontrol modules into separate ebuilds :-),
					# there's a dep here
RDEPEND="${DEPEND}
	~kde-base/kcheckpass-3.3.1
	sys-apps/eject"
KMCOPYLIB="libkonq libkonq"
KMEXTRACTONLY="kcheckpass/kcheckpass.h"
KMCOMPILEONLY="kcontrol/background"
KMNODOCS=true

src_install() {
	# ugly, needs fixing: don't install kcontrol/background
	kde-meta_src_install
	
	# Show gnome icons when choosing new icon for desktop shortcut
	dodir /usr/share/pixmaps
	mv ${D}/${PREFIX}/share/apps/kdesktop/pics/* ${D}/usr/share/pixmaps/
	rm -rf ${D}/${PREFIX}/share/apps/kdesktop/pics/
	cd ${D}/${PREFIX}/share/apps/kdesktop/
	ln -sf /usr/share/pixmaps/ pics

	rmdir ${D}/${PREFIX}/share/templates/.source/emptydir
}

pkg_postinst() {
	mkdir -p ${PREFIX}/share/templates/.source/emptydir
}
