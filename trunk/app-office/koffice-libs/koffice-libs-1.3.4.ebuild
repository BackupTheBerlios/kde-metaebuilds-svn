# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=koffice
KMMODULE=lib
inherit kde-meta eutils

DESCRIPTION="A free, integrated office suite for KDE, the K Desktop Environment."
HOMEPAGE="http://www.koffice.org/"
SRC_URI="$SRC_URI mirror://kde/stable/${KMNAME}/src/${KMNAME}-${PV}.tar.bz2"

LICENSE="GPL-2 LGPL-2"
KEYWORDS="~x86"

IUSE=""
SLOT="0"

DEPEND="dev-util/pkgconfig"

RDEPEND="$DEPEND
	~app-office/koffice-data-$PV"

KMEXTRA="
	interfaces/ 
	plugins/
	tools/
	filters/olefilters/
	filters/xsltfilter/
	filters/generic_wrapper/
	kounavail/
	doc/koffice
	doc/thesaurus"
	
KMEXTRACTONLY="
	kchart/kdchart" 

need-kde 3.1

src_unpack() {
	kde-meta_src_unpack unpack
	
	# Force the compilation of libkopainter.
	sed -i 's:$(KOPAINTERDIR):kopainter:' $S/lib/Makefile.am	
	
	kde-meta_src_unpack makefiles
}
