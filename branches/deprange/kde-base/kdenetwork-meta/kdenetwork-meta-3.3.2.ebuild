# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
KDEMAXVER=3.3.2

DESCRIPTION="kdenetwork - merge this to pull in all kdenetwork-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.3"
KEYWORDS="~x86"
IUSE=""

RDEPEND="~kde-base/dcoprss-3.3.1
	~kde-base/kdenetwork-filesharing-3.3.1
	~kde-base/kdict-3.3.1
	~kde-base/kget-$PV
	~kde-base/knewsticker-$PV
	~kde-base/kopete-$PV
	~kde-base/kpf-3.3.1
	~kde-base/kppp-$PV
	~kde-base/krdc-3.3.1
	~kde-base/krfb-3.3.1
	~kde-base/ksirc-$PV
	~kde-base/ktalkd-3.3.1
	~kde-base/kwifimanager-$PV
	~kde-base/librss-3.3.1
	~kde-base/lisa-3.3.1"
