# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $
KDEMAXVER=3.3.2

DESCRIPTION="kdebase - merge this to pull in all kdebase-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
~kde-base/kdebase-applnk-3.3.1
~kde-base/drkonqi-3.3.1
~kde-base/kappfinder-3.3.1
~kde-base/kate-${PV}
~kde-base/kcheckpass-3.3.1
~kde-base/kcminit-3.3.1
~kde-base/kcontrol-${PV}
~kde-base/kdcop-3.3.1
~kde-base/kdebugdialog-3.3.1
~kde-base/kdepasswd-$PV
~kde-base/kdeprint-3.3.1
~kde-base/kdesktop-$PV
~kde-base/kdesu-$PV
~kde-base/kdialog-3.3.1
~kde-base/kdm-${PV}
~kde-base/kfind-3.3.1
~kde-base/khelpcenter-3.3.1
~kde-base/khotkeys-$PV
~kde-base/kicker-${PV}
~kde-base/kdebase-kioslaves-$PV
~kde-base/klipper-${PV}
~kde-base/kmenuedit-3.3.1
~kde-base/konqueror-${PV}
~kde-base/konsole-${PV}
~kde-base/kpager-3.3.1
~kde-base/kpersonalizer-3.3.1
~kde-base/kreadconfig-3.3.1
~kde-base/kscreensaver-3.3.1
~kde-base/ksmserver-3.3.1
~kde-base/ksplashml-3.3.1
~kde-base/kstart-$PV
~kde-base/ksysguard-3.3.1
~kde-base/ksystraycmd-3.3.1
~kde-base/ktip-3.3.1
~kde-base/kwin-${PV}
~kde-base/kxkb-${PV}
~kde-base/kdebase-l10n-${PV}
~kde-base/libkonq-3.3.1
~kde-base/nsplugins-${PV}
~kde-base/kdebase-pics-3.3.1"
