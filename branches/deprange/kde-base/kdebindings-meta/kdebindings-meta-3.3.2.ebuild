# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $
KDEMAXVER=3.3.2

DESCRIPTION="kdebindings - merge this to pull in all kdebase-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RRDEPEND="
~kde-base/dcopc-3.3.1
~kde-base/dcopperl-3.3.1
~kde-base/dcoppython-3.3.1
~kde-base/kalyptus-${PV}
~kde-base/kdejava-3.3.1
~kde-base/kjsembed-3.3.1
~kde-base/korundum-${PV}
~kde-base/qtjava-${PV}
~kde-base/qtruby-${PV}
~kde-base/smoke-3.3.1"


# Omitted: qtsharp, dcopjava, xparts (considered broken by upstream) 