# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdebase/kdebase-3.3.0.ebuild,v 1.11 2004/09/20 01:59:38 malc Exp $

inherit kde-functions

need-kde $PV

DESCRIPTION="startkde script, which starts a complete KDE session, and associated scripts"
KEYWORDS="~x86"
IUSE=""

# The kde apps called from the startkde script.
# kdesktop, kicker etc are started because they put files in $KDEDIR/share/autostart
# and so in theory they aren't strictly necessary deps.
RDEPEND="$RDEPEND 
		~kde-base/kdesktop-$PV
		~kde-base/kcminit-$PV
		~kde-base/ksmserver-$PV
		~kde-base/kwin-$PV
		~kde-base/kpersonalizer-$PV
		~kde-base/kreadconfig-$PV
		~kde-base/ksplashml-$PV"

src_unpack() {
	einfo "Nothing to unpack"
}

src_compile() {
	einfo "Nothing to compile"
}

src_install() {
	
	# startkde script
	dodir $KDEDIR/bin
	sed -e "s:_KDEDIR_:${KDEDIR}:" $DISTDIR/startkde-$PVR > $D/$KDEDIR/bin/startkde
	chmod a+x $D/$KDEDIR/bin/startkde

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
	sed -e "s:_PREFIX_:${PREFIX}:g" \
 		$FILESDIR/kde-3.3.desktop > $D/usr/share/xsessions/kde-3.3.desktop
}

pkg_postinst () {
	einfo "To enable gpg-agent and/or ssh-agent in KDE sessions,"
	einfo "edit $PREFIX/env/agent-startup.sh and $PREFIX/shutdown/agent-shutdown.sh"
}