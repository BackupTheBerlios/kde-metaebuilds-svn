# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.2

inherit kde-functions
DESCRIPTION="kdeaddons - merge this to pull in all kdeaddons-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE="sdl arts"

RDEPEND="
$(deprange 3.3.1 $PV kde-base/atlantikdesigner)
$(deprange 3.3.1 $PV kde-base/knewsticker-scripts)
$(deprange 3.3.1 $PV kde-base/ksig)
$(deprange 3.3.1 $PV kde-base/vimpart)
$(deprange 3.3.1 $PV kde-base/kaddressbook-xxports-kworldclock)
$(deprange 3.3.1 $PV kde-base/kate-openheader)
$(deprange 3.3.1 $PV kde-base/kate-textfilter)
$(deprange 3.3.1 $PV kde-base/kate-xmlcheck)
$(deprange 3.3.1 $PV kde-base/kate-xmltools)
$(deprange 3.3.1 $PV kde-base/kate-scripts)
$(deprange 3.3.1 $PV kde-base/kate-htmltools)
$(deprange 3.3.1 $PV kde-base/kate-modeline)
$(deprange 3.3.1 $PV kde-base/kate-kpybrowser)
$(deprange 3.3.1 $PV kde-base/kate-cppsymbolviewer)
$(deprange 3.3.1 $PV kde-base/kate-filelistloader)
$(deprange 3.3.1 $PV kde-base/kate-tabbarextension)
$(deprange 3.3.1 $PV kde-base/kicker-kbinaryclock)
$(deprange 3.3.1 $PV kde-base/kicker-kolourpicker)
$(deprange 3.3.1 $PV kde-base/kicker-ktimemon)
$(deprange $PV $MAXKDEVER kde-base/kicker-math)
$(deprange 3.3.1 $PV kde-base/kicker-mediacontrol)
$(deprange 3.3.1 $PV kde-base/kfile-desktop)
$(deprange 3.3.1 $PV kde-base/kfile-folder)
$(deprange 3.3.1 $PV kde-base/kfile-html)
$(deprange 3.3.1 $PV kde-base/kfile-txt)
$(deprange $PV $MAXKDEVER kde-base/kfile-lnk)
$(deprange 3.3.1 $PV kde-base/konqueror-crashes)
$(deprange 3.3.1 $PV kde-base/konqueror-khtmlsettingsplugin)
$(deprange $PV $MAXKDEVER kde-base/konqueror-arkplugin)
$(deprange 3.3.1 $PV kde-base/konqueror-autorefresh)
$(deprange 3.3.1 $PV kde-base/konqueror-babelfish)
$(deprange 3.3.1 $PV kde-base/konqueror-dirfilter)
$(deprange 3.3.1 $PV kde-base/konqueror-domtreeviewer)
$(deprange 3.3.1 $PV kde-base/konqueror-fsview)
$(deprange 3.3.1 $PV kde-base/konqueror-imagerotation)
$(deprange 3.3.1 $PV kde-base/konqueror-kimgalleryplugin)
$(deprange $PV $MAXKDEVER kde-base/konqueror-kuick)
$(deprange 3.3.1 $PV kde-base/konqueror-minitools)
$(deprange $PV $MAXKDEVER kde-base/konqueror-rellinks)
$(deprange 3.3.1 $PV kde-base/konqueror-searchbar)
$(deprange $PV $MAXKDEVER kde-base/konqueror-sidebar)
$(deprange 3.3.1 $PV kde-base/konqueror-smbmounter)
$(deprange 3.3.1 $PV kde-base/konqueror-uachanger)
$(deprange 3.3.1 $PV kde-base/konqueror-validators)
$(deprange 3.3.1 $PV kde-base/konqueror-webarchiver)
$(deprange 3.3.1 $PV kde-base/renamedlg-audio)
$(deprange 3.3.1 $PV kde-base/renamedlg-images)
sdl? ( 
 $(deprange 3.3.1 $PV kde-base/noatun-blurscope)
 $(deprange 3.3.1 $PV kde-base/noatun-synaescope)
 $(deprange 3.3.1 $PV kde-base/noatun-tyler)
 $(deprange 3.3.1 $PV kde-base/noatun-tippercanoe)
)
arts? (
 $(deprange 3.3.1 $PV kde-base/noatun-pitchablespeed)
 $(deprange 3.3.1 $PV kde-base/noatun-wavecapture)
 $(deprange 3.3.1 $PV kde-base/noatun-alsaplayer)
)
$(deprange 3.3.1 $PV kde-base/noatun-alarm)
$(deprange 3.3.1 $PV kde-base/noatun-charlatan)
$(deprange 3.3.1 $PV kde-base/noatun-dub)
$(deprange 3.3.1 $PV kde-base/noatun-ffrs)
$(deprange 3.3.1 $PV kde-base/noatun-luckytag)
$(deprange 3.3.1 $PV kde-base/noatun-lyrics)
$(deprange 3.3.1 $PV kde-base/noatun-noatunmadness)
$(deprange 3.3.1 $PV kde-base/noatun-oblique)
"

# the below are disabled from compialtion by upstream. ebuilds exist, but the software
# likely just doesn't work.
BROKEN="
$(deprange 3.3.1 $PV kde-base/kate-filetemplates)
$(deprange 3.3.1 $PV kde-base/kate-helloworld)
$(deprange 3.3.1 $PV kde-base/kate-insertcommand)
$(deprange 3.3.1 $PV kde-base/kate-kjswrapper)
$(deprange 3.3.1 $PV kde-base/kate-make)
sdl? ( $(deprange 3.3.1 $PV kde-base/noatun-nexscope) )
"