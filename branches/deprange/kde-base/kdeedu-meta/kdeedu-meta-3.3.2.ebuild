# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kdeedu 3.3.0 - merge this to pull in all kdeedu-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
$(need-version-range 3.3.1 $PV kde-base/kig)
$(need-version-range $PV $MAXKDEVER kde-base/kalzium)
$(need-version-range 3.3.1 $PV kde-base/khangman)
$(need-version-range 3.3.1 $PV kde-base/kpercentage)
$(need-version-range $PV $MAXKDEVER kde-base/kiten)
$(need-version-range 3.3.1 $PV kde-base/kvoctrain)
$(need-version-range 3.3.1 $PV kde-base/kturtle)
$(need-version-range 3.3.1 $PV kde-base/kverbos)
$(need-version-range 3.3.1 $PV kde-base/kdeedu-applnk)
$(need-version-range $PV $MAXKDEVER kde-base/kbruch)
$(need-version-range 3.3.1 $PV kde-base/keduca)
$(need-version-range 3.3.1 $PV kde-base/kmessedwords)
$(need-version-range $PV $MAXKDEVER kde-base/klatin)
$(need-version-range $PV $MAXKDEVER kde-base/kmplot)
$(need-version-range 3.3.1 $PV kde-base/kstars)
$(need-version-range 3.3.1 $PV kde-base/ktouch)
$(need-version-range 3.3.1 $PV kde-base/klettres)
$(need-version-range $PV $MAXKDEVER kde-base/kmathtool)
$(need-version-range 3.3.1 $PV kde-base/kwordquiz)
"
