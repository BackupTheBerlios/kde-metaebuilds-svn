# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="The KDE Address Book"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdepim-$PV 
	~kde-base/libkcal-$PV 
	~kde-base/certmanager-$PV
	~kde-base/libkdenetwork-$PV
	~kde-base/kontact-$PV"
KMCOPYLIB="
	libkdepim libkdepim
	libkcal libkcal
	libkleopatra certmanager/lib/
	libqgpgme libkdenetwork/qgpgme/
	libkdenetwork libkdenetwork/
	libkpinterfaces kontact/interfaces/"
KMEXTRACTONLY="
	libkdepim/
	libkdenetwork/
	libkcal/
	libical/
	certmanager/
	kontact/interfaces/
	kmail/kmailIface.h"
KMCOMPILEONLY="
	libical/src/libical/
	libical/src/libicalss/"
	# We add them here because they are standard plugins and programs related to kaddressbook but not a dep of any other kdepim program, so they will be lost if noone install them
KMEXTRA="
	kabc/
	kfile-plugins/vcf
	kontact/plugins/kaddressbook"
	
src_compile() {
	export DO_NOT_COMPILE="libical" && kde-meta_src_compile myconf configure
	# generate "ical.h"
	cd ${S}/libical/src/libical && make ical.h
	# generate "icalss.h"
	cd ${S}/libical/src/libicalss && make icalss.h
	
	kde-meta_src_compile "make"
}