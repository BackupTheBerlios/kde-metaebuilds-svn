# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.1

inherit kde-functions
DESCRIPTION="kdeedu 3.3.0 - merge this to pull in all kdeedu-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
$(need-version-range $PV $MAXKDEVER kde-base/kig)
$(need-version-range $PV $MAXKDEVER kde-base/kalzium)
$(need-version-range $PV $MAXKDEVER kde-base/libkdeedu)
$(need-version-range $PV $MAXKDEVER kde-base/khangman)
$(need-version-range $PV $MAXKDEVER kde-base/kpercentage)
$(need-version-range $PV $MAXKDEVER kde-base/kiten)
$(need-version-range $PV $MAXKDEVER kde-base/kvoctrain)
$(need-version-range $PV $MAXKDEVER kde-base/kturtle)
$(need-version-range $PV $MAXKDEVER kde-base/kverbos)
$(need-version-range $PV $MAXKDEVER kde-base/kdeedu-applnk)
$(need-version-range $PV $MAXKDEVER kde-base/kbruch)
$(need-version-range $PV $MAXKDEVER kde-base/keduca)
$(need-version-range $PV $MAXKDEVER kde-base/kmessedwords)
$(need-version-range $PV $MAXKDEVER kde-base/klatin)
$(need-version-range $PV $MAXKDEVER kde-base/kmplot)
$(need-version-range $PV $MAXKDEVER kde-base/kstars)
$(need-version-range $PV $MAXKDEVER kde-base/ktouch)
$(need-version-range $PV $MAXKDEVER kde-base/klettres)
$(need-version-range $PV $MAXKDEVER kde-base/kmathtool)
$(need-version-range $PV $MAXKDEVER kde-base/kwordquiz)
"
