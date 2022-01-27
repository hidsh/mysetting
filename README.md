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

## install

Note (*): So `.gitconfig` is commented out, it will *NOT* be installed at default. check that line then uncoment it, then install as following:

```
git clone git@github.com:hidsh/mysetting.git
cd mysetting
./install.sh
```

