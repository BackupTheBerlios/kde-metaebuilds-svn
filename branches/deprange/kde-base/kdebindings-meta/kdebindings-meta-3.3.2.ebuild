# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kdebindings - merge this to pull in all kdebase-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RRDEPEND="
$(need-version-range 3.3.1 $PV kde-base/dcopc)
$(need-version-range 3.3.1 $PV kde-base/dcopperl)
$(need-version-range 3.3.1 $PV kde-base/dcoppython)
$(need-version-range $PV $MAXKDEVER kde-base/kalyptus)
$(need-version-range 3.3.1 $PV kde-base/kdejava)
$(need-version-range 3.3.1 $PV kde-base/kjsembed)
$(need-version-range $PV $MAXKDEVER kde-base/korundum)
$(need-version-range $PV $MAXKDEVER kde-base/qtjava)
$(need-version-range $PV $MAXKDEVER kde-base/qtruby)
$(need-version-range 3.3.1 $PV kde-base/smoke)"


# Omitted: qtsharp, dcopjava, xparts (considered broken by upstream) 