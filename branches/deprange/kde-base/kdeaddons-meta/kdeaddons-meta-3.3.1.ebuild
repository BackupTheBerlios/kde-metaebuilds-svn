# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
MAXKDEVER=3.3.1

inherit kde-functions
DESCRIPTION="kdeaddons - merge this to pull in all kdeaddons-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE="sdl arts"

RDEPEND="
$(need-version-range $PV $MAXKDEVER kde-base/atlantikdesigner)
$(need-version-range $PV $MAXKDEVER kde-base/knewsticker-scripts)
$(need-version-range $PV $MAXKDEVER kde-base/ksig)
$(need-version-range $PV $MAXKDEVER kde-base/vimpart)
$(need-version-range $PV $MAXKDEVER kde-base/kaddressbook-xxports-kworldclock)
$(need-version-range $PV $MAXKDEVER kde-base/kate-openheader)
$(need-version-range $PV $MAXKDEVER kde-base/kate-textfilter)
$(need-version-range $PV $MAXKDEVER kde-base/kate-xmlcheck)
$(need-version-range $PV $MAXKDEVER kde-base/kate-xmltools)
$(need-version-range $PV $MAXKDEVER kde-base/kate-scripts)
$(need-version-range $PV $MAXKDEVER kde-base/kate-htmltools)
$(need-version-range $PV $MAXKDEVER kde-base/kate-modeline)
$(need-version-range $PV $MAXKDEVER kde-base/kate-kpybrowser)
$(need-version-range $PV $MAXKDEVER kde-base/kate-cppsymbolviewer)
$(need-version-range $PV $MAXKDEVER kde-base/kate-filelistloader)
$(need-version-range $PV $MAXKDEVER kde-base/kate-tabbarextension)
$(need-version-range $PV $MAXKDEVER kde-base/kicker-kbinaryclock)
$(need-version-range $PV $MAXKDEVER kde-base/kicker-kolourpicker)
$(need-version-range $PV $MAXKDEVER kde-base/kicker-ktimemon)
$(need-version-range $PV $MAXKDEVER kde-base/kicker-math)
$(need-version-range $PV $MAXKDEVER kde-base/kicker-mediacontrol)
$(need-version-range $PV $MAXKDEVER kde-base/kfile-desktop)
$(need-version-range $PV $MAXKDEVER kde-base/kfile-folder)
$(need-version-range $PV $MAXKDEVER kde-base/kfile-html)
$(need-version-range $PV $MAXKDEVER kde-base/kfile-txt)
$(need-version-range $PV $MAXKDEVER kde-base/kfile-lnk)
$(need-version-range $PV $MAXKDEVER kde-base/konqueror-crashes)
$(need-version-range $PV $MAXKDEVER kde-base/konqueror-khtmlsettingsplugin)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-arkplugin)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-autorefresh)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-babelfish)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-dirfilter)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-domtreeviewer)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-fsview)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-imagerotation)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-kimgalleryplugin)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-kuick)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-minitools)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-rellinks)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-searchbar)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-sidebar)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-smbmounter)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-uachanger)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-validators)
 $(need-version-range $PV $MAXKDEVER kde-base/konqueror-webarchiver)
$(need-version-range $PV $MAXKDEVER kde-base/renamedlg-audio)
$(need-version-range $PV $MAXKDEVER kde-base/renamedlg-images)
sdl? ( 
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-blurscope)
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-synaescope)
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-tyler)
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-tippercanoe)
)
arts? (
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-pitchablespeed)
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-wavecapture)
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-alsaplayer)
)
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-alarm)
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-charlatan)
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-dub)
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-ffrs)
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-luckytag)
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-lyrics)
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-noatunmadness)
 $(need-version-range $PV $MAXKDEVER kde-base/noatun-oblique)
"

# the below are disabled from compialtion by upstream. ebuilds exist, but the software
# likely just doesn't work.
BROKEN="
$(need-version-range $PV $MAXKDEVER kde-base/kate-filetemplates)
$(need-version-range $PV $MAXKDEVER kde-base/kate-helloworld)
$(need-version-range $PV $MAXKDEVER kde-base/kate-insertcommand)
$(need-version-range $PV $MAXKDEVER kde-base/kate-kjswrapper)
$(need-version-range $PV $MAXKDEVER kde-base/kate-make)
sdl? ( $(need-version-range $PV $MAXKDEVER kde-base/noatun-nexscope) )
"