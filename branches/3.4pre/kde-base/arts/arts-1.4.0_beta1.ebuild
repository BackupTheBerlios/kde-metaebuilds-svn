# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/arts/arts-1.3.2.ebuild,v 1.3 2004/12/09 15:44:11 caleb Exp $

inherit kde flag-o-matic eutils
set-kdedir 3.4

myPV=1.3.91
DESCRIPTION="aRts, the KDE sound (and all-around multimedia) server/output manager"
HOMEPAGE="http://multimedia.kde.org/"
SRC_URI="mirror://kde/unstable/3.3.91/src/${PN}-${myPV}.tar.bz2"
S="$WORKDIR/$PN-$myPV"
LICENSE="GPL-2 LGPL-2"
SLOT="3.4"
KEYWORDS="~x86"
IUSE="alsa oggvorbis esd artswrappersuid jack mad hardened"

DEPEND="alsa? ( media-libs/alsa-lib virtual/alsa )
	oggvorbis? ( media-libs/libvorbis media-libs/libogg )
	esd? ( media-sound/esound )
	jack? ( media-sound/jack-audio-connection-kit )
	mad? ( media-libs/libmad media-libs/libid3tag )
	media-libs/audiofile
	>=dev-libs/glib-2
	>=x11-libs/qt-3.3
	>=sys-apps/portage-2.0.49-r8"

src_unpack() {
	kde_src_unpack
	epatch ${FILESDIR}/1.3.0-jack-configure.in.in.patch
	epatch ${FILESDIR}/arts-1.3.2-alsa-bigendian.patch

	if (is-flag -fstack-protector || is-flag -fstack-protector-all || use hardened); then
		epatch ${FILESDIR}/arts-1.3.2-mcopidl.patch
	fi

	# None of this should be needed anymore... remove some time later
	# 
	# for the configure.in.in patch, for some reason it's not automatically picked up
	# rm -f $S/configure
	# cd ${S} && make -f admin/Makefile.common
	# use amd64 && epatch ${FILESDIR}/arts-${PV}-buffer.patch
	# this patch fixes the high cpu usage of mp3 and vorbis
	# epatch ${FILESDIR}/arts-vorbis-fix.dif
}

src_compile() {

	#fix bug 13453
	filter-flags -foptimize-sibling-calls

	#fix bug 41980
	use sparc && filter-flags -fomit-frame-pointer

	myconf="$myconf $(use_enable alsa) $(use_enable oggvorbis vorbis) $(use_enable mad libmad) $(use_enable jack)"

	kde_src_compile
}

src_install() {
	kde_src_install
	dodoc ${S}/doc/{NEWS,README,TODO}

	# moved here from kdelibs so that when arts is installed
	# without kdelibs it's still in the path.
	dodir /etc/env.d
echo "PATH=${PREFIX}/bin
ROOTPATH=${PREFIX}/sbin:${PREFIX}/bin
LDPATH=${PREFIX}/lib
CONFIG_PROTECT=\"${PREFIX}/share/config ${PREFIX}/env ${PREFIX}/shutdown\"" > ${D}/etc/env.d/46kdepaths-3.4.0_alpha1 # number goes down with version upgrade

	echo "KDEDIR=$PREFIX" > ${D}/etc/env.d/59kdedir-3.4.0_alpha1 # number goes up with version upgrade

	# used for realtime priority, but off by default as it is a security hazard
	use artswrappersuid && chmod u+s ${D}/${PREFIX}/bin/artswrapper
}

pkg_postinst() {
	if ! use artswrappersuid ; then
		einfo "Run chmod +s ${PREFIX}/bin/artswrapper to let artsd use realtime priority"
		einfo "and so avoid possible skips in sound. However, on untrusted systems this"
		einfo "creates the possibility of a DoS attack that'll use 100% cpu at realtime"
		einfo "priority, and so is off by default. See bug #7883."
		einfo "Or, you can set the local artswrappersuid USE flag to make the ebuild do this."
	fi
}
