# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="kdegraphics 3.3.1 - merge this to pull in all kdegraphics-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE="gphoto2 scanner povray"

DEPEND="gphoto2? ( ~kde-base/kamera-$PV )
	~kde-base/kcoloredit-$PV
	~kde-base/kdegraphics-kfile-plugins-$PV
	~kde-base/kdvi-$PV
	~kde-base/kfax-$PV
	~kde-base/kghostview-$PV
	~kde-base/kiconedit-$PV
	~kde-base/kmrml-$PV
	~kde-base/kolourpaint-$PV
	scanner? ( ~kde-base/kooka-$PV )
	~kde-base/kpdf-$PV
	povray? ( ~kde-base/kpovmodeler-$PV )
	~kde-base/kruler-$PV
	~kde-base/ksnapshot-$PV
	~kde-base/ksvgplugin-$PV
	~kde-base/kuickshow-$PV
	~kde-base/kview-$PV
	~kde-base/kviewshell-$PV
	scanner? ( ~kde-base/libkscan-$PV )
	~kde-base/libksvg-$PV"