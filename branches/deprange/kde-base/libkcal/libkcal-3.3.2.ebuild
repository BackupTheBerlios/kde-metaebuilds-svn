# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdepim
inherit kde-meta eutils

DESCRIPTION="KDE kcal library for korganizer etc"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/ktnef-$PV"
KMEXTRA="libical"
KMEXTRACTONLY="libkdepim/email.h"
KMCOPYLIB="libktnef ktnef/lib"
