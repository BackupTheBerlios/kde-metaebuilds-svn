# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KMNAME=kdeadmin
inherit kde-meta

DESCRIPTION=""
KEYWORDS="~x86"
IUSE=""
DEPEND=""

# For consistent building behaviour regardless of whether lilo is installed
src_unpack () {
    kde-meta_src_unpack
    use x86 && echo > $S/lilo-config/configure.in.in
}
