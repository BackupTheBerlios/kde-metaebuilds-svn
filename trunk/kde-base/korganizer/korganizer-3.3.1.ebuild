# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
inherit kde-meta eutils

DESCRIPTION="Library used by konqueror's file manager mode as well as kdesktop and other kde apps"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkpimexchange-$PV  
	~kde-base/libkdepim-$PV 
	~kde-base/libkcal-$PV
	~kde-base/libkpimidentities-$PV
	~kde-base/ktnef-$PV
	~kde-base/kdepim-kresources-$PV
	~kde-base/kontact-$PV"
KMCOPYLIB="
	libkdepim libkdepim
	libkpimexchange libkpimexchange
	libkcal libkcal
	libkpimidentities libkpimidentities
	libktnef ktnef/lib
	libkcal_resourceremote kresources/remote
	libkpinterfaces kontact/interfaces"
KMEXTRACTONLY="
	libkpimexchange/
	libkcal/
	libkdepim/
	libkpimidentities/
	mimelib/
	ktnef/
	certmanager/lib/
	kresources/remote/
	kmail/kmailIface.h
	kontact/interfaces/"
KMCOMPILEONLY="
	kalarmd/"
	
# They seems to be used only by korganizer
KMEXTRA="
	kgantt
	kdgantt
	kontact/plugins/korganizer/" # We add here the kontact's plugin instead of compiling it with kontact because it needs a lot of korganizer deps.

src_compile() {
	export DO_NOT_COMPILE="kalarmd" && kde-meta_src_compile myconf configure
	# generate "alarmdaemoniface_stub.h"
	cd ${S}/kalarmd && make alarmdaemoniface_stub.h
	# generate "alarmguiiface_stub.h"
	cd ${S}/kalarmd && make alarmguiiface_stub.h
	
	kde-meta_src_compile make
}
