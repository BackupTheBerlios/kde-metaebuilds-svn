# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

KMNAME=kdebase
inherit kde-meta eutils

DESCRIPTION="Library used by konqueror's file manager mode as well as kdesktop and other kde apps"
KEYWORDS="~x86"
IUSE="pam"
KMEXTRACTONLY="startkde"
KMCOMPILEONLY="kcontrol/background"
DEPEND="$DEPEND 
		pam? ( sys-libs/pam )
		~kde-base/kcontrol-$PV" # Requires the desktop background settings and kdm modules,
								# so until we separate the kcontrol modules into separate ebuilds :-),
								# there's a dep here

src_unpack() {
        kde-meta_src_unpack
        epatch ${FILESDIR}/${PVR}/startkde-${PVR}-gentoo.diff
}

								
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

	insinto /etc/pam.d
	newins ${FILESDIR}/kde.pam kde
	newins ${FILESDIR}/kde-np.pam kde-np

	# startkde script
	cd ${D}/${KDEDIR}/bin
	sed -e "s:_KDEDIR_:${KDEDIR}:" $S/startkde > startkde
	chmod a+x startkde

	# startup and shutdown scripts
	dodir ${KDEDIR}/env
	dodir ${KDEDIR}/shutdown
	cp -a ${FILESDIR}/agent-startup.sh ${D}/${KDEDIR}/env
	cp -a ${FILESDIR}/agent-shutdown.sh ${D}/${KDEDIR}/shutdown

	# x11 session script
	cd ${T}
	echo "#!/bin/sh
${KDEDIR}/bin/startkde" > kde-${PV}
	chmod a+x kde-${PV}
	exeinto /etc/X11/Sessions
	doexe kde-${PV}

	cd ${D}/${KDEDIR}/share/config/kdm || die
	dodir ${KDEDIR}/share/config/kdm/sessions
	sed -e "s:_PREFIX_:${PREFIX}:g" \
	    -e "s:_RANDOM_:${RANDOM}${RANDOM}:g" \
	${FILESDIR}/${PVR}/kdmrc > kdmrc
	sed -e "s:_PREFIX_:${PREFIX}:g" ${FILESDIR}/${PVR}/Xsetup > Xsetup

	cp ${FILESDIR}/${PVR}/backgroundrc .
}

	