# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KDEMAXVER=3.3.2

DESCRIPTION="kdeaddons - merge this to pull in all kdeaddons-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE="sdl arts"

DEPEND="
~kde-base/atlantikdesigner-3.3.1
~kde-base/knewsticker-scripts-3.3.1
~kde-base/ksig-3.3.1
~kde-base/vimpart-3.3.1
~kde-base/kaddressbook-xxports-kworldclock-3.3.1
~kde-base/kate-openheader-3.3.1
~kde-base/kate-textfilter-3.3.1
~kde-base/kate-xmlcheck-3.3.1
~kde-base/kate-xmltools-3.3.1
~kde-base/kate-scripts-3.3.1
~kde-base/kate-htmltools-3.3.1
~kde-base/kate-modeline-3.3.1
~kde-base/kate-kpybrowser-3.3.1
~kde-base/kate-cppsymbolviewer-3.3.1
~kde-base/kate-filelistloader-3.3.1
~kde-base/kate-tabbarextension-3.3.1
~kde-base/kicker-kbinaryclock-3.3.1
~kde-base/kicker-kolourpicker-3.3.1
~kde-base/kicker-ktimemon-3.3.1
~kde-base/kicker-math-$PV
~kde-base/kicker-mediacontrol-3.3.1
~kde-base/kfile-desktop-3.3.1
~kde-base/kfile-folder-3.3.1
~kde-base/kfile-html-3.3.1
~kde-base/kfile-txt-3.3.1
~kde-base/kfile-lnk-$PV
~kde-base/konqueror-crashes-3.3.1
~kde-base/konqueror-khtmlsettingsplugin-3.3.1
~kde-base/konqueror-arkplugin-$PV
~kde-base/konqueror-autorefresh-3.3.1
~kde-base/konqueror-babelfish-3.3.1
~kde-base/konqueror-dirfilter-3.3.1
~kde-base/konqueror-domtreeviewer-3.3.1
~kde-base/konqueror-fsview-3.3.1
~kde-base/konqueror-imagerotation-3.3.1
~kde-base/konqueror-kimgalleryplugin-3.3.1
~kde-base/konqueror-kuick-$PV
~kde-base/konqueror-minitools-3.3.1
~kde-base/konqueror-rellinks-$PV
~kde-base/konqueror-searchbar-3.3.1
~kde-base/konqueror-sidebar-$PV
~kde-base/konqueror-smbmounter-3.3.1
~kde-base/konqueror-uachanger-3.3.1
~kde-base/konqueror-validators-3.3.1
~kde-base/konqueror-webarchiver-3.3.1
~kde-base/renamedlg-audio-3.3.1
~kde-base/renamedlg-images-3.3.1
sdl? ( 
 ~kde-base/noatun-blurscope-3.3.1
 ~kde-base/noatun-synaescope-3.3.1
 ~kde-base/noatun-tyler-3.3.1
 ~kde-base/noatun-tippercanoe-3.3.1
)
arts? (
 ~kde-base/noatun-pitchablespeed-3.3.1
 ~kde-base/noatun-wavecapture-3.3.1
 ~kde-base/noatun-alsaplayer-3.3.1
)
~kde-base/noatun-alarm-3.3.1
~kde-base/noatun-charlatan-3.3.1
~kde-base/noatun-dub-3.3.1
~kde-base/noatun-ffrs-3.3.1
~kde-base/noatun-luckytag-3.3.1
~kde-base/noatun-lyrics-3.3.1
~kde-base/noatun-noatunmadness-3.3.1
~kde-base/noatun-oblique-3.3.1
"

# the below are disabled from compialtion by upstream. ebuilds exist, but the software
# likely just doesn't work.
BROKEN="
~kde-base/kate-filetemplates-3.3.1
~kde-base/kate-helloworld-3.3.1
~kde-base/kate-insertcommand-3.3.1
~kde-base/kate-kjswrapper-3.3.1
~kde-base/kate-make-3.3.1
sdl? ( ~kde-base/noatun-nexscope-3.3.1 )
"