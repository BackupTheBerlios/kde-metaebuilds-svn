# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
KMMODULE=wizards
MAXKDEVER=3.3.2
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
DEPEND="$(need-version-range $KM_DEPRANGE kde-base/libkdepim kde-base/libkcal kde-base/certmanager kde-base/kdepim-kresources kde-base/libkpimidentities)"

KMCOPYLIB="
	libkcal_imap kresources/imap/kcal
	libkabc_imap kresources/imap/kabc
	libknotes_imap kresources/imap/knotes
	libkcal libkcal
	libkdepim libkdepim
	libkpimidentities libkpimidentities
	libkabc_xmlrpc kresources/egroupware
	libkcal_xmlrpc kresources/egroupware
	libknotes_xmlrpc kresources/egroupware
	libkcal_slox kresources/slox
	libkabc_slox kresources/slox"
KMEXTRACTONLY="
	libkdepim/
	libkcal/
	libkpimidentities/
	kresources/
	knotes/
	certmanager/lib/"
KMCOMPILEONLY="kresources/slox/"

src_compile() {
	export DO_NOT_COMPILE="kresources" && kde-meta_src_compile myconf configure
	# generate "kabcsloxprefs.h"
	cd ${S}/kresources/slox && make kabcsloxprefs.h
	# generate "kcalsloxprefs.h"
	cd ${S}/kresources/slox && make kcalsloxprefs.h
	
	kde-meta_src_compile make
}