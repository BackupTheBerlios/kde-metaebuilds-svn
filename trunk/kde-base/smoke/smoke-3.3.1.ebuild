# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdebindings
KMEXTRACTONLY="kalyptus/kalyptus kalyptus/*.pm"
inherit kde-meta

DESCRIPTION=""
KEYWORDS="~x86"
IUSE=""
DEPEND="dev-lang/perl"
PATCHES="$FILESDIR/no-gtk-glib-check.diff $FILESDIR/parallel-make.diff"

