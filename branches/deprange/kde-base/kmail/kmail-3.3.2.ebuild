# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE mail client"
KEYWORDS="~x86"
IUSE=""
DEPEND="$(need-version-range $PV $MAXKDEVER kde-base/libkdenetwork)
$(need-version-range $PV $MAXKDEVER kde-base/libkdepim)
$(need-version-range 3.3.1 $PV kde-base/libkpimidentities) 
$(need-version-range $PV $MAXKDEVER kde-base/mimelib) 
$(need-version-range 3.3.1 $PV kde-base/libksieve) 
$(need-version-range $PV $MAXKDEVER kde-base/certmanager)
$(need-version-range $PV $MAXKDEVER kde-base/libkcal)"
RDEPEND="${DEPEND}
$(need-version-range $PV $MAXKDEVER kde-base/kdepim-kioslaves)
$(need-version-range 3.3.1 $PV kde-base/kmailcvt)
$(need-version-range $PV $MAXKDEVER kde-base/kontact)"
	
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

