# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kdegraphics - merge this to pull in all kdegraphics-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE="gphoto2 scanner povray"

RDEPEND="gphoto2? ( $(deprange 3.3.1 $PV kde-base/kamera) )
	$(deprange 3.3.1 $PV kde-base/kcoloredit)
	$(deprange $PV $MAXKDEVER kde-base/kdegraphics-kfile-plugins)
	$(deprange $PV $MAXKDEVER kde-base/kdvi)
	$(deprange $PV $MAXKDEVER kde-base/kfax)
	$(deprange $PV $MAXKDEVER kde-base/kghostview)
	$(deprange 3.3.1 $PV kde-base/kiconedit)
	$(deprange 3.3.1 $PV kde-base/kmrml)
	$(deprange $PV $MAXKDEVER kde-base/kolourpaint)
	scanner? ( $(deprange 3.3.1 $PV kde-base/kooka) )
	$(deprange $PV $MAXKDEVER kde-base/kpdf)
	povray? ( $(deprange $PV $MAXKDEVER kde-base/kpovmodeler) )
	$(deprange 3.3.1 $PV kde-base/kruler)
	$(deprange 3.3.1 $PV kde-base/ksnapshot)
	$(deprange 3.3.1 $PV kde-base/ksvgplugin)
	$(deprange $PV $MAXKDEVER kde-base/kuickshow)
	$(deprange 3.3.1 $PV kde-base/kview)
	$(deprange $PV $MAXKDEVER kde-base/kviewshell)
	scanner? ( $(deprange 3.3.1 $PV kde-base/libkscan) )
	$(deprange 3.3.1 $PV kde-base/libksvg)"
