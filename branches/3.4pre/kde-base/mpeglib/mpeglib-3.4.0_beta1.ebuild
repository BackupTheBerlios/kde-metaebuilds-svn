# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdemultimedia
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE mpeg library"
KEYWORDS="~x86"
IUSE="cdparanoia"
DEPEND="cdparanoia? ( media-sound/cdparanoia )"

if [ "${ARCH}" != "amd64" ] ; then
	PATCHES="${FILESDIR}/kdemultimedia-64bit.patch"
fi

myconf="$(use_with cdparanoia) $(use_enable cdparanoia)"
