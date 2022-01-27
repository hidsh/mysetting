#!/bin/sh
put_a() {
    ln -f -s $PWD/$1 ~/$1  	# put_a hoge           : ./hoge -> ~/hoge
}
put_b() {
    ln -f -s $PWD/$1 $2    	# put_b hoge /tmp/fuga : ./hoge -> /tmp/fuga
}

#----------------------------
put_a .dircolors
#put_a .gitconfig
put_a .gitignore
put_a .lesskey
put_a .vimrc
put_b .zshrc-mymod ~/.zprezto/runcoms/zshrc

