# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=koffice
KMMODULE=
inherit kde-meta eutils

DESCRIPTION="A free, integrated office suite for KDE, the K Desktop Environment."
HOMEPAGE="http://www.koffice.org/"
SRC_URI="mirror://kde/stable/${KMNAME}/src/${KMNAME}-${PV}.tar.bz2"

LICENSE="GPL-2 LGPL-2"
KEYWORDS="~x86"

IUSE=""
SLOT="0"

DEPEND="dev-util/pkgconfig"

KMEXTRA="
	mimetypes/
	servicetypes/
	pics/
	templates/
	autocorrect/"

need-kde 3.1