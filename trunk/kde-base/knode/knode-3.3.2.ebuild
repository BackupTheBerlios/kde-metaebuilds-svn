# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
inherit kde-meta eutils

DESCRIPTION="A newsreader for KDE"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdepim-$PV
	~kde-base/libkdenetwork-$PV
	~kde-base/kontact-$PV"
KMCOPYLIB="
	libkdepim libkdepim
	libkdenetwork libkdenetwork
	libkpinterfaces kontact/interfaces"
KMEXTRACTONLY="
	libkdepim/
	libkdenetwork/
	kontact/interfaces"
KMEXTRA="kontact/plugins/knode" # We add here the kontact's plugin instead of compiling it with kontact because it needs a lot of this programs deps.
