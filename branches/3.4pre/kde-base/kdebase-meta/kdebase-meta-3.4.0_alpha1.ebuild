# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $
MAXKDEVER=$PV

inherit kde-functions
DESCRIPTION="kdebase - merge this to pull in all kdebase-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.4"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
$(deprange $PV $MAXKDEVER kde-base/kdebase-applnk)
$(deprange $PV $MAXKDEVER kde-base/drkonqi)
$(deprange $PV $MAXKDEVER kde-base/kappfinder)
$(deprange $PV $MAXKDEVER kde-base/kate)
$(deprange $PV $MAXKDEVER kde-base/kcheckpass)
$(deprange $PV $MAXKDEVER kde-base/kcminit)
$(deprange $PV $MAXKDEVER kde-base/kcontrol)
$(deprange $PV $MAXKDEVER kde-base/kdcop)
$(deprange $PV $MAXKDEVER kde-base/kdebugdialog)
$(deprange $PV $MAXKDEVER kde-base/kdepasswd)
$(deprange $PV $MAXKDEVER kde-base/kdeprint)
$(deprange $PV $MAXKDEVER kde-base/kdesktop)
$(deprange $PV $MAXKDEVER kde-base/kdesu)
$(deprange $PV $MAXKDEVER kde-base/kdialog)
$(deprange $PV $MAXKDEVER kde-base/kdm)
$(deprange $PV $MAXKDEVER kde-base/kfind)
$(deprange $PV $MAXKDEVER kde-base/khelpcenter)
$(deprange $PV $MAXKDEVER kde-base/khotkeys)
$(deprange $PV $MAXKDEVER kde-base/kicker)
$(deprange $PV $MAXKDEVER kde-base/kdebase-kioslaves)
$(deprange $PV $MAXKDEVER kde-base/klipper)
$(deprange $PV $MAXKDEVER kde-base/kmenuedit)
$(deprange $PV $MAXKDEVER kde-base/konqueror)
$(deprange $PV $MAXKDEVER kde-base/konsole)
$(deprange $PV $MAXKDEVER kde-base/kpager)
$(deprange $PV $MAXKDEVER kde-base/kpersonalizer)
$(deprange $PV $MAXKDEVER kde-base/kreadconfig)
$(deprange $PV $MAXKDEVER kde-base/kscreensaver)
$(deprange $PV $MAXKDEVER kde-base/ksmserver)
$(deprange $PV $MAXKDEVER kde-base/ksplashml)
$(deprange $PV $MAXKDEVER kde-base/kstart)
$(deprange $PV $MAXKDEVER kde-base/ksysguard)
$(deprange $PV $MAXKDEVER kde-base/ksystraycmd)
$(deprange $PV $MAXKDEVER kde-base/ktip)
$(deprange $PV $MAXKDEVER kde-base/kwin)
$(deprange $PV $MAXKDEVER kde-base/kxkb)
$(deprange $PV $MAXKDEVER kde-base/kdebase-l10n)
$(deprange $PV $MAXKDEVER kde-base/libkonq)
$(deprange $PV $MAXKDEVER kde-base/nsplugins)
$(deprange $PV $MAXKDEVER kde-base/kdebase-pics)
$(deprange $PV $MAXKDEVER kde-base/knetattach)"
