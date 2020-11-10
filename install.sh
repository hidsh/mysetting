#!/bin/sh
put_a() {
    ln -s $PWD/$1 ~/$1  	# put_a hoge           : ./hoge -> ~/hoge
}
put_b() {
    ln -s $PWD/$1 $2    	# put_b hoge /tmp/fuga : ./hoge -> /tmp/fuga
}

#----------------------------
put_a .vimrc
put_a .lesskey
