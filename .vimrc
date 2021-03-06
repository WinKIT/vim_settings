"---------------------------------------------------------
" Robocup's .vimrc
" 
" プラグイン管理にdein.nvimを使うため、neovimを入れている
" セットアップの方法についてはドリームラボ参照
"
" 個人の設定は ~/.vim/basic.vim
" 個人のプラグイン設定は ~/.vim/plug.vim と ~/.vim/my_dein.toml
" 
" ロボカップ全体の設定は ~/vim_settings/basic.vim
" ロボカップ全体のプラグイン設定は ~/vim_settings/plug.vim と ~/.v
"---------------------------------------------------------

"dein Scripts
if &compatible
	set nocompatible
endif

let s:dein_dir = expand('~/.vim/plugins')
"" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

    "個人でプラグイン入れたいときはdein_sourceにvimscriptで書いてもらう
    let s:dein_source = expand('~/vim_settings/etc/dein_source.vim')
    if filereadable(expand('s:dein_source'))
        source s:dein_source
    endif

	let g:my_dir	= expand('~/.vim/')
	let g:dot_dir	= expand('~/vim_settings/')
	let s:toml		= g:dot_dir . '/dein.toml'
	let s:lazy_toml = g:dot_dir . '/dein_lazy.toml'
    let s:my_toml   = g:my_dir  . '/my_dein.toml'

	call dein#load_toml(s:toml,			{'lazy': 0})
	call dein#load_toml(s:lazy_toml,	{'lazy': 1})
	call dein#load_toml(s:my_toml,	{'lazy': 1})

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on

"if you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"-----------------------------------------------------------
"set runtimepath+=~/vim_settings/
"runtime! etc/*.vim 

"Read script about Plugin

if filereadable(expand('~/vim_settings/plug.vim'))
    source ~/vim_settings/plug.vim
else
    echo "err 1"
endif
if filereadable(expand('~/.vim/plug.vim'))
    source ~/.vim/plug.vim
else
    echo "err 2"
endif

"-----------------------------------------------------------
"Read script about exept Plugin

if filereadable(expand('~/vim_settings/basic.vim'))
    source ~/vim_settings/basic.vim
else
    echo "err 3"
endif

if filereadable(expand('~/.vim/basic.vim'))
    source ~/.vim/basic.vim
else
    echo "err 4"
endif

"-----------------------------------------------------------
"subvimrc : running test
if filereadable(expand('~/.vim/subvimrc.vim'))
    source ~/.vim/subvimrc.vim
endif

