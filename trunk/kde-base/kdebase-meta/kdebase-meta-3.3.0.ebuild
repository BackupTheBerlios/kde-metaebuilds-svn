# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

DESCRIPTION="kdebase 3.3.0 - merge this to pull in all kdebase-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="
~kde-base/kdebase-applnk-${PV}
~kde-base/drkonqi-${PV}
~kde-base/kappfinder-${PV}
~kde-base/kate-${PV}
~kde-base/kcheckpass-${PV}
~kde-base/kcminit-${PV}
~kde-base/kcontrol-${PV}
~kde-base/kdcop-${PV}
~kde-base/kdebase-meta-${PV}
~kde-base/kdebugdialog-${PV}
~kde-base/kdepasswd-${PV}
~kde-base/kdeprint-${PV}
~kde-base/kdesktop-${PV}
~kde-base/kdesu-${PV}
~kde-base/kdialog-${PV}
~kde-base/kdm-${PV}
~kde-base/kfind-${PV}
~kde-base/khelpcenter-${PV}
~kde-base/khotkeys-${PV}
~kde-base/kicker-${PV}
~kde-base/kioslave-${PV}
~kde-base/klipper-${PV}
~kde-base/kmenuedit-${PV}
~kde-base/konqueror-${PV}
~kde-base/konsole-${PV}
~kde-base/kpager-${PV}
~kde-base/kpersonalizer-${PV}
~kde-base/kreadconfig-${PV}
~kde-base/kscreensaver-${PV}
~kde-base/ksmserver-${PV}
~kde-base/ksplashml-${PV}
~kde-base/kstart-${PV}
~kde-base/ksysguard-${PV}
~kde-base/ksystraycmd-${PV}
~kde-base/ktip-${PV}
~kde-base/kwin-${PV}
~kde-base/kxkb-${PV}
~kde-base/kdebase-l10n-${PV}
~kde-base/libkonq-${PV}
~kde-base/nsplugins-${PV}
~kde-base/kdebase-pics-${PV}"
