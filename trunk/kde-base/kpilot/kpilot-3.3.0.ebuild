# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
inherit kde-meta eutils

DESCRIPTION="Library used by konqueror's file manager mode as well as kdesktop and other kde apps"
KEYWORDS="~x86"
IUSE=""
DEPEND="app-pda/pilot-link 
	dev-libs/libmal
	~kde-base/libkcal-$PV
	~kde-base/libkdepim-$PV
	~kde-base/kontact-$PV"
KMCOPYLIB="
	libkcal libkcal
	libkdepim libkdepim
	libkpinterfaces kontact/interfaces"
# libkcal is installed because a lot of headers are needed, but it don't have to be compiled
KMEXTRACTONLY="
	libkcal/
	libkdepim libkdepim/
	kontact/interfaces/"
KMEXTRA="
	kfile-plugins/palm-databases
	kontact/plugins/kpilot/" # We add here the kontact's plugin instead of compiling it with kontact because it needs a lot of this programs deps.
