#!/bin/sh
ext=".sfd"

if [ $# -eq "0" ]; then
	echo "Usage: $0 font (without sfd extension)"
	exit
fi

./sfd2bold.ff $1$ext
./sfd2italic.ff $1$ext
./sfd2condensed.ff $1Bold$ext
./sfd2condensed.ff $1Italic$ext
./sfd2ttf.ff $1$ext $1Bold$ext $1Italic$ext $1BoldCondensed$ext $1ItalicCondensed$ext
