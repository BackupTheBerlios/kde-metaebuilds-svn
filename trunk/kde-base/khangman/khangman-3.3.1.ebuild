# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeedu
inherit kde-meta

DESCRIPTION="Classical hangman game for KDE"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/libkdeedu-$PV"

KMEXTRACTONLY="libkdeedu/kdeeducore"
KMCOPYLIB="libkdeeducore libkdeedu/kdeeducore"