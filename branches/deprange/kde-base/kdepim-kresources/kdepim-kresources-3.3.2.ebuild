# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
KMMODULE=kresources
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE PIM groupware plugin collection"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(deprange $PV $MAXKDEVER kde-base/libkcal)
$(deprange $PV $MAXKDEVER kde-base/libkpimexchange)
$(deprange $PV $MAXKDEVER kde-base/libkdepim)
$(deprange $PV $MAXKDEVER kde-base/libkdenetwork)
	>=app-crypt/gpgme-0.4.0"
KMCOPYLIB="
	libkcal libkcal
	libkpimexchange libkpimexchange
	libkdepim libkdepim
	libkdenetwork libkdenetwork
	libqgpgme libkdenetwork/qgpgme
	"
KMEXTRACTONLY="
	libkcal/
	libical/
	libkpimexchange/
	libkdepim/
	korganizer/
	kmail/kmailicalIface.h
	libkdenetwork/
	"
KMCOMPILEONLY="
	libkdenetwork/gpgmepp
	libical/src/libical/
	libical/src/libicalss/
	knotes/
	kaddressbook/
	certmanager/
"
	
#src_compile() {
#	export DO_NOT_COMPILE="libical kaddressbook knotes" && kde-meta_src_compile myconf configure
#	# generate "ical.h"
#	cd ${S}/libical/src/libical && make ical.h
#	# generate "icalss.h"
#	cd ${S}/libical/src/libicalss && make icalss.h
#	
#	cd ${S}/kaddressbook/interfaces && make libkabinterfaces.la
#	# generate "libkabcommon.la"
#	cd ${S}/kaddressbook && make libkabcommon.la
#	cd ${S}/knotes && make libknotes.la libknotesresources.la
#	
#	kde-meta_src_compile "make"
#}
