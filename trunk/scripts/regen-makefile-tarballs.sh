#!/bin/sh
ver=$1
shift
for dir in $@; do
    cd $dir
    for x in *; do
	[ "$x" != "${x//-meta}" ] && echo ">>> Skipping: $x" && continue
	[ -f "/usr/local/portage/distfiles/$x-$ver-0-makefiles.tar.bz2" ] && echo ">>> Exists, skipping" && continue
        echo ">>> $x"
        cd $x && \
	rm -f Manifest files/digest-$x-$ver && \
        FEATURES=-cvs USE="-usepackagedmakefiles" KM_PACKAGEMAKEFILES="yes" \
		ebuild $x-$ver.ebuild clean unpack && \
        cp -f /var/tmp/portage/$x-$ver/temp/*-makefiles.tar.bz2 /usr/local/portage/distfiles && \
        ln -f /usr/local/portage/distfiles/* /usr/portage/distfiles/ && \
        FEATURES=cvs USE="usepackagedmakefiles" ebuild $x-$ver.ebuild digest # || break 2
        cd ..
    done
    cd ..
done
