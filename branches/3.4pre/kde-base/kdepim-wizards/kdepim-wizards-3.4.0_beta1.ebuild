# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
KMMODULE=wizards
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDEPIM wizards"
KEYWORDS="~x86"
IUSE=""
OLDDEPEND="~kde-base/libkdepim-$PV 
	~kde-base/libkcal-$PV 
	~kde-base/certmanager-$PV
	~kde-base/kdepim-kresources-$PV
	~kde-base/libkpimidentities-$PV"
DEPEND="$(deprange $PV $MAXKDEVER kde-base/libkdepim)
$(deprange $PV $MAXKDEVER kde-base/libkcal)
$(deprange $PV $MAXKDEVER kde-base/certmanager)
$(deprange $PV $MAXKDEVER kde-base/kdepim-kresources)
$(deprange $PV $MAXKDEVER kde-base/libkpimidentities)
$(deprange $PV $MAXKDEVER kde-base/kaddressbook)"

KMCOPYLIB="
	libkcal libkcal
	libkdepim libkdepim
	libkpimidentities libkpimidentities
	libkabc_xmlrpc kresources/egroupware
	libkcal_xmlrpc kresources/egroupware
	libknotes_xmlrpc kresources/egroupware
	libkcal_slox kresources/slox
	libkabc_slox kresources/slox
	libkcal_groupwise kresources/groupwise
	libkabc_groupwise kresources/groupwise
	libkcalkolab kresources/kolab/kcal
	libkabckolab kresources/kolab/kabc
	libknoteskolab kresources/kolab/knotes"
KMEXTRACTONLY="
	libkdepim/
	libkcal/
	libkpimidentities/
	kresources/
	knotes/
	certmanager/lib/
	kmail"
KMCOMPILEONLY="kresources/slox/
		kresources/groupwise
		kresources/egroupware"

src_compile() {
	export DO_NOT_COMPILE="kresources" && kde-meta_src_compile myconf configure

	# generate headers
	cd ${S}/kresources/slox && make kabcsloxprefs.h
	cd ${S}/kresources/slox && make kcalsloxprefs.h
	cd ${S}/kresources/groupwise && make kabc_groupwiseprefs.h
	cd ${S}/kresources/groupwise && make kcal_groupwiseprefsbase.h
	cd ${S}/kresources/egroupware && make kcal_egroupwareprefs.h
	cd ${S}/kresources/egroupware && make kabc_egroupwareprefs.h
	cd ${S}/kresources/egroupware && make knotes_egroupwareprefs.h
	
	kde-meta_src_compile make
}
