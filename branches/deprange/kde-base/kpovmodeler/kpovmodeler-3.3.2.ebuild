# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdegraphics
inherit kde-meta eutils

DESCRIPTION="KDE: Modeler for POV-Ray Scenes"
KEYWORDS="~x86"
IUSE=""
DEPEND="virtual/glut virtual/opengl"
RDEPEND="${DEPEND}
	media-gfx/povray"
