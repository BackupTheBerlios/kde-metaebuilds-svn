# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdelibs/kdelibs-3.3.2-r1.ebuild,v 1.2 2004/12/13 15:45:51 caleb Exp $

inherit kde eutils flag-o-matic
set-kdedir 3.4

myPV=3.3.90
DESCRIPTION="KDE libraries needed by all kde programs"
HOMEPAGE="http://www.kde.org/"
SRC_URI="mirror://kde/unstable/${myPV}/src/${PN}-${myPV}.tar.bz2"
S="$WORKDIR/$PN-$myPV"
LICENSE="GPL-2 LGPL-2"
SLOT="3.4"
KEYWORDS="~x86"
IUSE="alsa arts cups doc ipv6 kerberos ldap ssl tiff"

# kde.eclass has kdelibs in DEPEND, and we can't have that in here.
# so we recreate the entire DEPEND from scratch.
RDEPEND="arts? ( ~kde-base/arts-${PV/3.4/1.4} )
	>=x11-libs/qt-3.3.3
	app-arch/bzip2
	>=dev-libs/libxslt-1.1.4
	>=dev-libs/libxml2-2.6.6
	>=dev-libs/libpcre-4.2
	ssl? ( >=dev-libs/openssl-0.9.7d )
	alsa? ( media-libs/alsa-lib virtual/alsa )
	cups? ( >=net-print/cups-1.1.19 )
	ldap? ( >=net-nds/openldap-2.1.26 )
	tiff? ( media-libs/tiff )
	kerberos? ( virtual/krb5 )
	virtual/fam
	virtual/ghostscript
	media-libs/libart_lgpl
	net-dns/libidn
	sys-devel/gettext"

DEPEND="${RDEPEND}
	>=sys-devel/autoconf-2.58
	>=sys-devel/automake-1.8
	app-text/sgml-common
	doc? ( app-doc/doxygen )
	!kde-misc/kgamma"

src_compile() {
	kde_src_compile myconf

	myconf="$myconf --with-distribution=Gentoo --enable-libfam --enable-dnotify"
	myconf="$myconf $(use_with alsa) $(use_enable cups) $(use_with arts)"

	use ipv6	|| myconf="$myconf --with-ipv6-lookup=no"
	use ssl		&& myconf="$myconf --with-ssl-dir=/usr"	|| myconf="$myconf --without-ssl"

	use kerberos || myconf="$myconf --with-gssapi=no"

	use x86 && myconf="$myconf --enable-fast-malloc=full"
	use ppc64 && append-flags -mminimal-toc

	kde_src_compile configure make

	use doc && make apidox
}

src_install() {
	kde_src_install
	dohtml *.html

	if use doc ; then
		einfo "Copying API documentation..."
		dodir ${KDEDIR}/share/doc/HTML/en/kdelibs-apidocs
		cp -r ${S}/apidocs/* ${D}/$KDEDIR/share/doc/HTML/en/kdelibs-apidocs
	else
		rm -r ${D}/$KDEDIR/share/doc/HTML/en/kdelibs-apidocs
	fi

	# needed to fix lib64 issues on amd64, see bug #45669
	use amd64 && ln -s ${KDEDIR}/lib ${D}/${KDEDIR}/lib64


	if ! use arts ; then

		dodir /etc/env.d

		echo "PATH=${PREFIX}/bin
ROOTPATH=${PREFIX}/sbin:${PREFIX}/bin
LDPATH=${PREFIX}/lib
CONFIG_PROTECT=\"${PREFIX}/share/config ${PREFIX}/env ${PREFIX}/shutdown\"" > ${D}/etc/env.d/46kdepaths-3.4.0_alpha1 # number goes down with version upgrade

		echo "KDEDIR=$PREFIX" > ${D}/etc/env.d/59kdedir-3.4.0_alpha1 # number goes up with version upgrade

	fi

}

pkg_postinst() {
	if use doc ; then
		rm $KDEDIR/share/doc/HTML/en/kdelibs-apidocs/common
		ln -sf $KDEDIR/share/doc/HTML/en/common \
			$KDEDIR/share/doc/HTML/en/kdelibs-apidocs/common
	fi
}
