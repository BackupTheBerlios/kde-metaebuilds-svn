# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdenetwork
KMMODULE=filesharing
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="kcontrol filesharing config module for NFS, SMB etc"
KEYWORDS="~x86"
IUSE=""
DEPEND="!net-misc/ksambaplugin"