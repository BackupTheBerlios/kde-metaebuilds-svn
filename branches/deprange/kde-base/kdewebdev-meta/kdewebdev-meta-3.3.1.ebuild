# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KDEMAXVER=3.3.1

DESCRIPTION="kdewebdev - merge this to pull in all kdewebdev-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
~kde-base/kfilereplace-$PV
~kde-base/kimagemapeditor-$PV
~kde-base/klinkstatus-$PV
~kde-base/kommander-$PV
~kde-base/kxsldbg-$PV
~kde-base/quanta-$PV
"