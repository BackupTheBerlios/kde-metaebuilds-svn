# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=3.3.1
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE mail client"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdenetwork-$PV  
	~kde-base/libkdepim-$PV
	~kde-base/libkpimidentities-$PV 
	~kde-base/mimelib-$PV 
	~kde-base/libksieve-$PV 
	~kde-base/certmanager-$PV
	~kde-base/libkcal-$PV"
RDEPEND="${DEPEND}
	~kde-base/kdepim-kioslaves-$PV
	~kde-base/kmailcvt-$PV
	~kde-base/kontact-$PV" 
	
KMCOPYLIB="
	libkdenetwork libkdenetwork/ 
	libkdepim libkdepim/
	libkpimidentities libkpimidentities/
	libmimelib mimelib/
	libksieve libksieve/
	libkleopatra certmanager/lib/
	libkcal libkcal
	libkpinterfaces kontact/interfaces/"
KMEXTRACTONLY=" 
	libkdenetwork/
	libkdepim/
	libkpimidentities/
	libksieve/
	libkcal/
	mimelib/
	certmanager/
	korganizer/korganizeriface.h
	kontact/interfaces/"
# the kmail plugins are installed with kmail
KMEXTRA="
	plugins/kmail/
	kontact/plugins/kmail/" # We add here the kontact's plugin instead of compiling it with kontact because it needs a lot of this programs deps.

