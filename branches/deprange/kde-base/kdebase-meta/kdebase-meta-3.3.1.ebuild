# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $
MAXKDEVER=3.3.1

inherit kde-functions
DESCRIPTION="kdebase - merge this to pull in all kdebase-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
$(need-version-range $PV $MAXKDEVER kde-base/kdebase-applnk)
$(need-version-range $PV $MAXKDEVER kde-base/drkonqi)
$(need-version-range $PV $MAXKDEVER kde-base/kappfinder)
$(need-version-range $PV $MAXKDEVER kde-base/kate)
$(need-version-range $PV $MAXKDEVER kde-base/kcheckpass)
$(need-version-range $PV $MAXKDEVER kde-base/kcminit)
$(need-version-range $PV $MAXKDEVER kde-base/kcontrol)
$(need-version-range $PV $MAXKDEVER kde-base/kdcop)
$(need-version-range $PV $MAXKDEVER kde-base/kdebase-meta)
$(need-version-range $PV $MAXKDEVER kde-base/kdebugdialog)
$(need-version-range $PV $MAXKDEVER kde-base/kdepasswd)
$(need-version-range $PV $MAXKDEVER kde-base/kdeprint)
$(need-version-range $PV $MAXKDEVER kde-base/kdesktop)
$(need-version-range $PV $MAXKDEVER kde-base/kdesu)
$(need-version-range $PV $MAXKDEVER kde-base/kdialog)
$(need-version-range $PV $MAXKDEVER kde-base/kdm)
$(need-version-range $PV $MAXKDEVER kde-base/kfind)
$(need-version-range $PV $MAXKDEVER kde-base/khelpcenter)
$(need-version-range $PV $MAXKDEVER kde-base/khotkeys)
$(need-version-range $PV $MAXKDEVER kde-base/kicker)
$(need-version-range $PV $MAXKDEVER kde-base/kdebase-kioslaves)
$(need-version-range $PV $MAXKDEVER kde-base/klipper)
$(need-version-range $PV $MAXKDEVER kde-base/kmenuedit)
$(need-version-range $PV $MAXKDEVER kde-base/konqueror)
$(need-version-range $PV $MAXKDEVER kde-base/konsole)
$(need-version-range $PV $MAXKDEVER kde-base/kpager)
$(need-version-range $PV $MAXKDEVER kde-base/kpersonalizer)
$(need-version-range $PV $MAXKDEVER kde-base/kreadconfig)
$(need-version-range $PV $MAXKDEVER kde-base/kscreensaver)
$(need-version-range $PV $MAXKDEVER kde-base/ksmserver)
$(need-version-range $PV $MAXKDEVER kde-base/ksplashml)
$(need-version-range $PV $MAXKDEVER kde-base/kstart)
$(need-version-range $PV $MAXKDEVER kde-base/ksysguard)
$(need-version-range $PV $MAXKDEVER kde-base/ksystraycmd)
$(need-version-range $PV $MAXKDEVER kde-base/ktip)
$(need-version-range $PV $MAXKDEVER kde-base/kwin)
$(need-version-range $PV $MAXKDEVER kde-base/kxkb)
$(need-version-range $PV $MAXKDEVER kde-base/kdebase-l10n)
$(need-version-range $PV $MAXKDEVER kde-base/libkonq)
$(need-version-range $PV $MAXKDEVER kde-base/nsplugins)
$(need-version-range $PV $MAXKDEVER kde-base/kdebase-pics)"
