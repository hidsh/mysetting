"
" key bindings
"
"------------------------------------------------------
"MODE                   NO-REMAPPING	REMAPPING
"normal			nnoremap	nmap
"visual			vnoremap	vmap
"command mode		cnoremap	cmap
"insert mode		inoremap	imap
"normal + vilual	noremap		map
"command + insert 	noremap!	map!
"------------------------------------------------------

nnoremap ; :
nnoremap : <ESC>	" disable :
nnoremap 4 $

noremap j gj
noremap k gk
noremap gj j
noremap gk k
noremap m <C-f>
noremap M <C-b>


inoremap <silent> jj <ESC>

"
" line number
"
set number

function! s:toggle_linum()
	set number!
endfunction

command! Linum call s:toggle_linum()


"
" other setting
"

"ターミナル接続を高速にする
set ttyfast

"ターミナルで256色表示を使う
set t_Co=256

"バックアップを作成しない
set nobackup

"Swapを作るまでの時間m秒
set updatetime=0

"行間をでシームレスに移動する
"set whichwrap+=h,l,<,>,[,],b,s

"カッコを閉じたとき対応するカッコに一時的に移動
set nostartofline

"コマンド、検索パターンを50まで保存
set history=50

set incsearch

"smart case で検索する
set ignorecase
set smartcase

"行末まで検索したら行頭に戻る
"set wrapscan


"括弧の対応をハイライト
set showmatch

"ターミナル上からの張り付けを許可
"set paste

"カーソルラインを表示する
set cursorline

"ファイルタイプに応じて挙動,色を変える
syntax on
filetype plugin on
filetype indent on

"OSのクリップボードを使用する
set clipboard+=unnamed

"sudoを忘れて権限のないファイルを編集した時\sudoで保存
nmap ,sudo :w !sudo tee %<CR>


