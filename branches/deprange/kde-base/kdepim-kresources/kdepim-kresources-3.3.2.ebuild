# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
KMMODULE=kresources
inherit kde-meta eutils

DESCRIPTION="KDE PIM groupware plugin collection"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkcal-$PV
	~kde-base/libkpimexchange-$PV
	~kde-base/libkdepim-$PV
	~kde-base/libkdenetwork-$PV
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
