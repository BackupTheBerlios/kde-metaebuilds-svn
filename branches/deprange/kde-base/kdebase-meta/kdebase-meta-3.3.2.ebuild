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
$(need-version-range 3.3.1 $PV kde-base/kdebase-applnk)
$(need-version-range 3.3.1 $PV kde-base/drkonqi)
$(need-version-range 3.3.1 $PV kde-base/kappfinder)
$(need-version-range $PV $MAXKDEVER kde-base/kate)
$(need-version-range 3.3.1 $PV kde-base/kcheckpass)
$(need-version-range 3.3.1 $PV kde-base/kcminit)
$(need-version-range $PV $MAXKDEVER kde-base/kcontrol)
$(need-version-range 3.3.1 $PV kde-base/kdcop)
$(need-version-range 3.3.1 $PV kde-base/kdebugdialog)
$(need-version-range $PV $MAXKDEVER kde-base/kdepasswd)
$(need-version-range 3.3.1 $PV kde-base/kdeprint)
$(need-version-range $PV $MAXKDEVER kde-base/kdesktop)
$(need-version-range $PV $MAXKDEVER kde-base/kdesu)
$(need-version-range 3.3.1 $PV kde-base/kdialog)
$(need-version-range $PV $MAXKDEVER kde-base/kdm)
$(need-version-range 3.3.1 $PV kde-base/kfind)
$(need-version-range 3.3.1 $PV kde-base/khelpcenter)
$(need-version-range $PV $MAXKDEVER kde-base/khotkeys)
$(need-version-range $PV $MAXKDEVER kde-base/kicker)
$(need-version-range $PV $MAXKDEVER kde-base/kdebase-kioslaves)
$(need-version-range $PV $MAXKDEVER kde-base/klipper)
$(need-version-range 3.3.1 $PV kde-base/kmenuedit)
$(need-version-range $PV $MAXKDEVER kde-base/konqueror)
$(need-version-range $PV $MAXKDEVER kde-base/konsole)
$(need-version-range 3.3.1 $PV kde-base/kpager)
$(need-version-range 3.3.1 $PV kde-base/kpersonalizer)
$(need-version-range 3.3.1 $PV kde-base/kreadconfig)
$(need-version-range 3.3.1 $PV kde-base/kscreensaver)
$(need-version-range 3.3.1 $PV kde-base/ksmserver)
$(need-version-range 3.3.1 $PV kde-base/ksplashml)
$(need-version-range $PV $MAXKDEVER kde-base/kstart)
$(need-version-range 3.3.1 $PV kde-base/ksysguard)
$(need-version-range 3.3.1 $PV kde-base/ksystraycmd)
$(need-version-range 3.3.1 $PV kde-base/ktip)
$(need-version-range $PV $MAXKDEVER kde-base/kwin)
$(need-version-range $PV $MAXKDEVER kde-base/kxkb)
$(need-version-range $PV $MAXKDEVER kde-base/kdebase-l10n)
$(need-version-range 3.3.1 $PV kde-base/libkonq)
$(need-version-range $PV $MAXKDEVER kde-base/nsplugins)
$(need-version-range 3.3.1 $PV kde-base/kdebase-pics)"
