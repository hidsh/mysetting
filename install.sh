#!/bin/sh

files=".vimrc"

for x in $files; do
	ln -s $PWD/$x ~/$x
done

