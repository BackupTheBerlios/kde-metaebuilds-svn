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
$(deprange 3.3.1 $PV kde-base/kig)
$(deprange $PV $MAXKDEVER kde-base/kalzium)
$(deprange 3.3.1 $PV kde-base/khangman)
$(deprange 3.3.1 $PV kde-base/kpercentage)
$(deprange $PV $MAXKDEVER kde-base/kiten)
$(deprange 3.3.1 $PV kde-base/kvoctrain)
$(deprange 3.3.1 $PV kde-base/kturtle)
$(deprange 3.3.1 $PV kde-base/kverbos)
$(deprange 3.3.1 $PV kde-base/kdeedu-applnk)
$(deprange $PV $MAXKDEVER kde-base/kbruch)
$(deprange 3.3.1 $PV kde-base/keduca)
$(deprange 3.3.1 $PV kde-base/kmessedwords)
$(deprange $PV $MAXKDEVER kde-base/klatin)
$(deprange $PV $MAXKDEVER kde-base/kmplot)
$(deprange 3.3.1 $PV kde-base/kstars)
$(deprange 3.3.1 $PV kde-base/ktouch)
$(deprange 3.3.1 $PV kde-base/klettres)
$(deprange $PV $MAXKDEVER kde-base/kmathtool)
$(deprange 3.3.1 $PV kde-base/kwordquiz)
"
