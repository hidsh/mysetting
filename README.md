# mysetting
my .zshrc, .vimrc, .lesskey, and so on...

# files
```
$ tree -a -I '.git|.DS_Store'
|-- .dircolors
|-- .gitconfig (*)
|-- .gitignore
|-- .lesskey
|-- .vimrc
|-- .zshrc-mymod
|-- README.md
`-- install.sh
```

Note (\*): **NOT** installed by default, so it is commented out in the `install.sh`. Check the line then uncomment it if you need.


## install

At first, you should install prezto as follows:
```
zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

*Refer to:* https://github.com/sorin-ionescu/prezto

Then install these settings:

```
git clone git@github.com:hidsh/mysetting.git
cd mysetting
./install.sh
```

# related repos

- [my prezto setting](https://github.com/hidsh/prezto.git)
