#!/bin/sh
ver=$1
shift
for dir in $@; do
    cd $dir
    for x in *; do
	[ "$x" != "${x//-meta}" ] && echo ">>> Skipping: $x" && continue
	[ ! -f "$x/$x-$ver.ebuild" ] && echo ">>> No $ver, skipping: $x" && continue
	[ -f "/usr/local/portage/distfiles/$x-$ver-0-makefiles.tar.bz2" ] && echo ">>> Exists, skipping: $x" && continue
        echo ">>> $x"
        cd $x && \
	rm -f Manifest files/digest-$x-$ver && \
        FEATURES=-cvs USE="-usepackagedmakefiles -kdexdeltas" KM_PACKAGEMAKEFILES="yes" \
		ebuild $x-$ver.ebuild clean unpack && \
        cp -f /var/tmp/portage/$x-$ver/temp/*-makefiles.tar.bz2 /usr/local/portage-metaebuilds/distfiles && \
        ln -f /usr/local/portage-metaebuilds/distfiles/* /usr/portage/distfiles/ && \
    	FEATURES=cvs ebuild $x-$ver.ebuild digest # || break 2
        cd ..
    done
    cd ..
done
