# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kdebase - merge this to pull in all kdebase-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
$(deprange 3.3.1 $PV kde-base/kdebase-applnk)
$(deprange 3.3.1 $PV kde-base/drkonqi)
$(deprange 3.3.1 $PV kde-base/kappfinder)
$(deprange $PV $MAXKDEVER kde-base/kate)
$(deprange 3.3.1 $PV kde-base/kcheckpass)
$(deprange 3.3.1 $PV kde-base/kcminit)
$(deprange $PV $MAXKDEVER kde-base/kcontrol)
$(deprange 3.3.1 $PV kde-base/kdcop)
$(deprange 3.3.1 $PV kde-base/kdebugdialog)
$(deprange $PV $MAXKDEVER kde-base/kdepasswd)
$(deprange 3.3.1 $PV kde-base/kdeprint)
$(deprange $PV $MAXKDEVER kde-base/kdesktop)
$(deprange $PV $MAXKDEVER kde-base/kdesu)
$(deprange 3.3.1 $PV kde-base/kdialog)
$(deprange $PV $MAXKDEVER kde-base/kdm)
$(deprange 3.3.1 $PV kde-base/kfind)
$(deprange 3.3.1 $PV kde-base/khelpcenter)
$(deprange $PV $MAXKDEVER kde-base/khotkeys)
$(deprange $PV $MAXKDEVER kde-base/kicker)
$(deprange $PV $MAXKDEVER kde-base/kdebase-kioslaves)
$(deprange $PV $MAXKDEVER kde-base/klipper)
$(deprange 3.3.1 $PV kde-base/kmenuedit)
$(deprange $PV $MAXKDEVER kde-base/konqueror)
$(deprange $PV $MAXKDEVER kde-base/konsole)
$(deprange 3.3.1 $PV kde-base/kpager)
$(deprange 3.3.1 $PV kde-base/kpersonalizer)
$(deprange 3.3.1 $PV kde-base/kreadconfig)
$(deprange 3.3.1 $PV kde-base/kscreensaver)
$(deprange 3.3.1 $PV kde-base/ksmserver)
$(deprange 3.3.1 $PV kde-base/ksplashml)
$(deprange $PV $MAXKDEVER kde-base/kstart)
$(deprange 3.3.1 $PV kde-base/ksysguard)
$(deprange 3.3.1 $PV kde-base/ksystraycmd)
$(deprange 3.3.1 $PV kde-base/ktip)
$(deprange $PV $MAXKDEVER kde-base/kwin)
$(deprange $PV $MAXKDEVER kde-base/kxkb)
$(deprange $PV $MAXKDEVER kde-base/kdebase-l10n)
$(deprange 3.3.1 $PV kde-base/libkonq)
$(deprange $PV $MAXKDEVER kde-base/nsplugins)
$(deprange 3.3.1 $PV kde-base/kdebase-pics)"
