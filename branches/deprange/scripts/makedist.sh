#!/bin/sh
rm -rf dist
svn export . dist
rm -rf dist/scripts
tar -cjf kde-metaebuilds-$1.tar.bz2 dist/
