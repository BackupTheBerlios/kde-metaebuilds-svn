# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

KMNAME=kdebase
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE login manager, similar to xdm and gdm"
KEYWORDS="~x86"
IUSE="pam"
KMCOMPILEONLY="kcontrol/background"
DEPEND="$DEPEND 
		pam? ( sys-libs/pam )
$(need-version-range $PV $MAXKDEVER kde-base/kcontrol)"
	# Requires the desktop background settings and kdm modules,
	# so until we separate the kcontrol modules into separate ebuilds :-),
	# there's a dep here
PATCHES="$FILESDIR/remove-startkde-$PV.diff"

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

	insinto ${KDEDIR}/share/config/kdm
	doins ${FILESDIR}/${PVR}/backgroundrc

	cd ${D}/${KDEDIR}/share/config/kdm || die
	sed -e "s:_PREFIX_:${PREFIX}:g" \
	    -e "s:_RANDOM_:${RANDOM}${RANDOM}:g" \
	${FILESDIR}/${PVR}/kdmrc > kdmrc
}

