# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="kdegraphics - merge this to pull in all kdegraphics-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE="gphoto2 scanner povray"

DEPEND="gphoto2? ( ~kde-base/kamera-3.3.1 )
	~kde-base/kcoloredit-3.3.1
	~kde-base/kdegraphics-kfile-plugins-$PV
	~kde-base/kdvi-$PV
	~kde-base/kfax-$PV
	~kde-base/kghostview-$PV
	~kde-base/kiconedit-3.3.1
	~kde-base/kmrml-3.3.1
	~kde-base/kolourpaint-$PV
	scanner? ( ~kde-base/kooka-3.3.1 )
	~kde-base/kpdf-$PV
	povray? ( ~kde-base/kpovmodeler-$PV )
	~kde-base/kruler-3.3.1
	~kde-base/ksnapshot-3.3.1
	~kde-base/ksvgplugin-3.3.1
	~kde-base/kuickshow-$PV
	~kde-base/kview-3.3.1
	~kde-base/kviewshell-$PV
	scanner? ( ~kde-base/libkscan-3.3.1 )
	~kde-base/libksvg-3.3.1"
