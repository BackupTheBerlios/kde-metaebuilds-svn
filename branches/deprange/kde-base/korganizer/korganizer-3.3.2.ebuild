# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="A Personal Organizer for KDE"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(deprange $PV $MAXKDEVER kde-base/libkpimexchange)
$(deprange $PV $MAXKDEVER kde-base/libkdepim) 
$(deprange $PV $MAXKDEVER kde-base/libkcal)
$(deprange 3.3.1 $PV kde-base/libkpimidentities)
$(deprange $PV $MAXKDEVER kde-base/ktnef)
$(deprange $PV $MAXKDEVER kde-base/kdepim-kresources)
$(deprange $PV $MAXKDEVER kde-base/kontact)"

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
