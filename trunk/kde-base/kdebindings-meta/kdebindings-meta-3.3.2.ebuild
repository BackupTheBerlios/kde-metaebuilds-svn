# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

DESCRIPTION="kdebindings - merge this to pull in all kdebase-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
~kde-base/dcopc-${PV}
~kde-base/dcopperl-${PV}
~kde-base/dcoppython-${PV}
~kde-base/kalyptus-${PV}
~kde-base/kdejava-${PV}
~kde-base/kjsembed-${PV}
~kde-base/korundum-${PV}
~kde-base/qtjava-${PV}
~kde-base/qtruby-${PV}
~kde-base/smoke-${PV}"


# Omitted: qtsharp, dcopjava, xparts (considered broken by upstream) 