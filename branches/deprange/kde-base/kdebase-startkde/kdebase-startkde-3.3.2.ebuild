# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

KMNAME=kdebase
KMNOMODULE=true
KMEXTRACTONLY="kdm/kfrontend/sessions/kde.desktop.in startkde"
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

need-kde $PV

DESCRIPTION="startkde script, which starts a complete KDE session, and associated scripts"
KEYWORDS="~x86"
IUSE=""

# The kde apps called from the startkde script.
# kdesktop, kicker etc are started because they put files in $KDEDIR/share/autostart
# and so in theory they aren't strictly necessary deps.
RDEPEND="$RDEPEND 
$(need-version-range 3.3.1 $PV kde-base/kdesktop)
$(need-version-range 3.3.1 $PV kde-base/kcminit)
$(need-version-range 3.3.1 $PV kde-base/ksmserver)
$(need-version-range $PV $MAXKDEVER kde-base/kwin)
$(need-version-range 3.3.1 $PV kde-base/kpersonalizer)
$(need-version-range 3.3.1 $PV kde-base/kreadconfig)
$(need-version-range 3.3.1 $PV kde-base/ksplashml)"

src_compile() {
	einfo "Nothing to compile"
}

src_install() {
	
	# startkde script
	dodir $KDEDIR/bin
	cd $D/$KDEDIR/bin
	cp $S/startkde .
	patch -p0 < $FILESDIR/startkde-$PV-gentoo.diff
	sed -i -e "s:_KDEDIR_:${KDEDIR}:" startkde
	chmod a+x startkde

	# startup and shutdown scripts
	insinto ${KDEDIR}/env
	newins $FILESDIR/agent-startup.sh agent-startup.sh
	insinto $KDEDIR/shutdown
	newins $FILESDIR/agent-shutdown.sh agent-shutdown.sh

	# x11 session script - old style
	cd ${T}
	echo "#!/bin/sh
${KDEDIR}/bin/startkde" > kde-${PV}
	chmod a+x kde-${PV}
	exeinto /etc/X11/Sessions
	doexe kde-${PV}

	# x11 session - new style
	dodir /usr/share/xsessions
	sed -e "s:@KDE_BINDIR@:${KDEDIR}/bin:g;s:Name=KDE:Name=KDE $PV:" \
 		$S/kdm/kfrontend/sessions/kde.desktop.in > $D/usr/share/xsessions/kde-$PV.desktop
}

pkg_postinst () {
	einfo "To enable gpg-agent and/or ssh-agent in KDE sessions,"
	einfo "edit $KDEDIR/env/agent-startup.sh and $KDEDIR/shutdown/agent-shutdown.sh"
}
