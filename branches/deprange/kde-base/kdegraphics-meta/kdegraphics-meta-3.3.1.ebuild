# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.1

inherit kde-functions
DESCRIPTION="kdegraphics - merge this to pull in all kdegraphics-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE="gphoto2 scanner povray"

RDEPEND="gphoto2? ( $(need-version-range $PV $MAXKDEVER kde-base/kamera) )
	$(need-version-range $PV $MAXKDEVER kde-base/kcoloredit)
	$(need-version-range $PV $MAXKDEVER kde-base/kdegraphics-kfile-plugins)
	$(need-version-range $PV $MAXKDEVER kde-base/kdvi)
	$(need-version-range $PV $MAXKDEVER kde-base/kfax)
	$(need-version-range $PV $MAXKDEVER kde-base/kghostview)
	$(need-version-range $PV $MAXKDEVER kde-base/kiconedit)
	$(need-version-range $PV $MAXKDEVER kde-base/kmrml)
	$(need-version-range $PV $MAXKDEVER kde-base/kolourpaint)
	scanner? ( $(need-version-range $PV $MAXKDEVER kde-base/kooka) )
	$(need-version-range $PV $MAXKDEVER kde-base/kpdf)
	povray? ( $(need-version-range $PV $MAXKDEVER kde-base/kpovmodeler) )
	$(need-version-range $PV $MAXKDEVER kde-base/kruler)
	$(need-version-range $PV $MAXKDEVER kde-base/ksnapshot)
	$(need-version-range $PV $MAXKDEVER kde-base/ksvgplugin)
	$(need-version-range $PV $MAXKDEVER kde-base/kuickshow)
	$(need-version-range $PV $MAXKDEVER kde-base/kview)
	$(need-version-range $PV $MAXKDEVER kde-base/kviewshell)
	scanner? ( $(need-version-range $PV $MAXKDEVER kde-base/libkscan) )
	$(need-version-range $PV $MAXKDEVER kde-base/libksvg)"