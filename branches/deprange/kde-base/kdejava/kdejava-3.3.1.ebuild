# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

KMNAME=kdebindings
KMEXTRACTONLY=qtjava
KMCOPYLIB="libqtjavasupport qtjava/javalib/qtjava"
KM_MAKEFILESREV=1
MAXKDEVER=3.3.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE java bindings"
KEYWORDS="~x86"
IUSE=""
DEPEND="virtual/jdk
	$(need-version-range $KM_DEPRANGE  kde-base/kwin kde-base/kcontrol kde-base/qtjava)"
RDEPEND="virtual/jre
	$(need-version-range $KM_DEPRANGE  kde-base/kwin kde-base/kcontrol kde-base/qtjava)"
OLDDEPEND="~kde-base/kwin-$PV ~kde-base/kcontrol-$PV ~kde-base/qtjava-$PV virtual/jdk"

PATCHES="$FILESDIR/no-gtk-glib-check.diff $FILESDIR/classpath.diff"


# Probably missing other kdebase, kdepim etc deps
# Needs to be compiled with just kdelibs installed to make sure

# Someone who knows about java-in-gentoo should look at this and the
# other java kdebindings, and fix the stupid thing
src_unpack() {
	kde-meta_src_unpack

	# $PREFIX-dependant, so don't go into the makefile tarballs
	cd $S/kdejava/koala/org/kde/koala
	for x in Makefile.am Makefile.in; do
		mv $x $x.orig
		sed -e "s:_CLASSPATH_:$(java-config -p qtjava):" $x.orig > $x
		rm $x.orig
    done
}

src_compile() {
	myconf="$myconf --with-java=`java-config --jdk-home`"
	kde-meta_src_compile
}
