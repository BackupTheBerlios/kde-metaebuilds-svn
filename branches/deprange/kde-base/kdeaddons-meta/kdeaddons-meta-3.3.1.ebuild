# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KDEMAXVER=3.3.1

DESCRIPTION="kdeaddons - merge this to pull in all kdeaddons-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE="sdl arts"

DEPEND="
~kde-base/atlantikdesigner-$PV
~kde-base/knewsticker-scripts-$PV
~kde-base/ksig-$PV
~kde-base/vimpart-$PV
~kde-base/kaddressbook-xxports-kworldclock-$PV
~kde-base/kate-openheader-$PV
~kde-base/kate-textfilter-$PV
~kde-base/kate-xmlcheck-$PV
~kde-base/kate-xmltools-$PV
~kde-base/kate-scripts-$PV
~kde-base/kate-htmltools-$PV
~kde-base/kate-modeline-$PV
~kde-base/kate-kpybrowser-$PV
~kde-base/kate-cppsymbolviewer-$PV
~kde-base/kate-filelistloader-$PV
~kde-base/kate-tabbarextension-$PV
~kde-base/kicker-kbinaryclock-$PV
~kde-base/kicker-kolourpicker-$PV
~kde-base/kicker-ktimemon-$PV
~kde-base/kicker-math-$PV
~kde-base/kicker-mediacontrol-$PV
~kde-base/kfile-desktop-$PV
~kde-base/kfile-folder-$PV
~kde-base/kfile-html-$PV
~kde-base/kfile-txt-$PV
~kde-base/kfile-lnk-$PV
~kde-base/konqueror-crashes-$PV
~kde-base/konqueror-khtmlsettingsplugin-$PV
 ~kde-base/konqueror-arkplugin-$PV
 ~kde-base/konqueror-autorefresh-$PV
 ~kde-base/konqueror-babelfish-$PV
 ~kde-base/konqueror-dirfilter-$PV
 ~kde-base/konqueror-domtreeviewer-$PV
 ~kde-base/konqueror-fsview-$PV
 ~kde-base/konqueror-imagerotation-$PV
 ~kde-base/konqueror-kimgalleryplugin-$PV
 ~kde-base/konqueror-kuick-$PV
 ~kde-base/konqueror-minitools-$PV
 ~kde-base/konqueror-rellinks-$PV
 ~kde-base/konqueror-searchbar-$PV
 ~kde-base/konqueror-sidebar-$PV
 ~kde-base/konqueror-smbmounter-$PV
 ~kde-base/konqueror-uachanger-$PV
 ~kde-base/konqueror-validators-$PV
 ~kde-base/konqueror-webarchiver-$PV
~kde-base/renamedlg-audio-$PV
~kde-base/renamedlg-images-$PV
sdl? ( 
 ~kde-base/noatun-blurscope-$PV
 ~kde-base/noatun-synaescope-$PV
 ~kde-base/noatun-tyler-$PV
 ~kde-base/noatun-tippercanoe-$PV
)
arts? (
 ~kde-base/noatun-pitchablespeed-$PV
 ~kde-base/noatun-wavecapture-$PV
 ~kde-base/noatun-alsaplayer-$PV
)
 ~kde-base/noatun-alarm-$PV
 ~kde-base/noatun-charlatan-$PV
 ~kde-base/noatun-dub-$PV
 ~kde-base/noatun-ffrs-$PV
 ~kde-base/noatun-luckytag-$PV
 ~kde-base/noatun-lyrics-$PV
 ~kde-base/noatun-noatunmadness-$PV
 ~kde-base/noatun-oblique-$PV
"

# the below are disabled from compialtion by upstream. ebuilds exist, but the software
# likely just doesn't work.
BROKEN="
~kde-base/kate-filetemplates-$PV
~kde-base/kate-helloworld-$PV
~kde-base/kate-insertcommand-$PV
~kde-base/kate-kjswrapper-$PV
~kde-base/kate-make-$PV
sdl? ( ~kde-base/noatun-nexscope-$PV )
"