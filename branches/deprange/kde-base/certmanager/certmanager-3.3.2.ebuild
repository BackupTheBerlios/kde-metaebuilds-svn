# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE certificate manager gui"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdenetwork-$PV"
KMCOPYLIB="libkdenetwork libkdenetwork/ 
	libqgpgme libkdenetwork/qgpgme/"
KMCOMPILEONLY="libkdenetwork/"
KMEXTRA="
	doc/kleopatra
	doc/kwatchgnupg"