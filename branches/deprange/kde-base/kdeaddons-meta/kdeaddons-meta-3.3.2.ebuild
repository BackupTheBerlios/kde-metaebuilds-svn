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
$(need-version-range 3.3.1 $PV kde-base/atlantikdesigner)
$(need-version-range 3.3.1 $PV kde-base/knewsticker-scripts)
$(need-version-range 3.3.1 $PV kde-base/ksig)
$(need-version-range 3.3.1 $PV kde-base/vimpart)
$(need-version-range 3.3.1 $PV kde-base/kaddressbook-xxports-kworldclock)
$(need-version-range 3.3.1 $PV kde-base/kate-openheader)
$(need-version-range 3.3.1 $PV kde-base/kate-textfilter)
$(need-version-range 3.3.1 $PV kde-base/kate-xmlcheck)
$(need-version-range 3.3.1 $PV kde-base/kate-xmltools)
$(need-version-range 3.3.1 $PV kde-base/kate-scripts)
$(need-version-range 3.3.1 $PV kde-base/kate-htmltools)
$(need-version-range 3.3.1 $PV kde-base/kate-modeline)
$(need-version-range 3.3.1 $PV kde-base/kate-kpybrowser)
$(need-version-range 3.3.1 $PV kde-base/kate-cppsymbolviewer)
$(need-version-range 3.3.1 $PV kde-base/kate-filelistloader)
$(need-version-range 3.3.1 $PV kde-base/kate-tabbarextension)
$(need-version-range 3.3.1 $PV kde-base/kicker-kbinaryclock)
$(need-version-range 3.3.1 $PV kde-base/kicker-kolourpicker)
$(need-version-range 3.3.1 $PV kde-base/kicker-ktimemon)
$(need-version-range $PV $MAXKDEVER kde-base/kicker-math)
$(need-version-range 3.3.1 $PV kde-base/kicker-mediacontrol)
$(need-version-range 3.3.1 $PV kde-base/kfile-desktop)
$(need-version-range 3.3.1 $PV kde-base/kfile-folder)
$(need-version-range 3.3.1 $PV kde-base/kfile-html)
$(need-version-range 3.3.1 $PV kde-base/kfile-txt)
$(need-version-range $PV $MAXKDEVER kde-base/kfile-lnk)
$(need-version-range 3.3.1 $PV kde-base/konqueror-crashes)
$(need-version-range 3.3.1 $PV kde-base/konqueror-khtmlsettingsplugin)
$(need-version-range $PV $MAXKDEVER kde-base/konqueror-arkplugin)
$(need-version-range 3.3.1 $PV kde-base/konqueror-autorefresh)
$(need-version-range 3.3.1 $PV kde-base/konqueror-babelfish)
$(need-version-range 3.3.1 $PV kde-base/konqueror-dirfilter)
$(need-version-range 3.3.1 $PV kde-base/konqueror-domtreeviewer)
$(need-version-range 3.3.1 $PV kde-base/konqueror-fsview)
$(need-version-range 3.3.1 $PV kde-base/konqueror-imagerotation)
$(need-version-range 3.3.1 $PV kde-base/konqueror-kimgalleryplugin)
$(need-version-range $PV $MAXKDEVER kde-base/konqueror-kuick)
$(need-version-range 3.3.1 $PV kde-base/konqueror-minitools)
$(need-version-range $PV $MAXKDEVER kde-base/konqueror-rellinks)
$(need-version-range 3.3.1 $PV kde-base/konqueror-searchbar)
$(need-version-range $PV $MAXKDEVER kde-base/konqueror-sidebar)
$(need-version-range 3.3.1 $PV kde-base/konqueror-smbmounter)
$(need-version-range 3.3.1 $PV kde-base/konqueror-uachanger)
$(need-version-range 3.3.1 $PV kde-base/konqueror-validators)
$(need-version-range 3.3.1 $PV kde-base/konqueror-webarchiver)
$(need-version-range 3.3.1 $PV kde-base/renamedlg-audio)
$(need-version-range 3.3.1 $PV kde-base/renamedlg-images)
sdl? ( 
 $(need-version-range 3.3.1 $PV kde-base/noatun-blurscope)
 $(need-version-range 3.3.1 $PV kde-base/noatun-synaescope)
 $(need-version-range 3.3.1 $PV kde-base/noatun-tyler)
 $(need-version-range 3.3.1 $PV kde-base/noatun-tippercanoe)
)
arts? (
 $(need-version-range 3.3.1 $PV kde-base/noatun-pitchablespeed)
 $(need-version-range 3.3.1 $PV kde-base/noatun-wavecapture)
 $(need-version-range 3.3.1 $PV kde-base/noatun-alsaplayer)
)
$(need-version-range 3.3.1 $PV kde-base/noatun-alarm)
$(need-version-range 3.3.1 $PV kde-base/noatun-charlatan)
$(need-version-range 3.3.1 $PV kde-base/noatun-dub)
$(need-version-range 3.3.1 $PV kde-base/noatun-ffrs)
$(need-version-range 3.3.1 $PV kde-base/noatun-luckytag)
$(need-version-range 3.3.1 $PV kde-base/noatun-lyrics)
$(need-version-range 3.3.1 $PV kde-base/noatun-noatunmadness)
$(need-version-range 3.3.1 $PV kde-base/noatun-oblique)
"

# the below are disabled from compialtion by upstream. ebuilds exist, but the software
# likely just doesn't work.
BROKEN="
$(need-version-range 3.3.1 $PV kde-base/kate-filetemplates)
$(need-version-range 3.3.1 $PV kde-base/kate-helloworld)
$(need-version-range 3.3.1 $PV kde-base/kate-insertcommand)
$(need-version-range 3.3.1 $PV kde-base/kate-kjswrapper)
$(need-version-range 3.3.1 $PV kde-base/kate-make)
sdl? ( $(need-version-range 3.3.1 $PV kde-base/noatun-nexscope) )
"