""""""""""""""""""""
" 基本
""""""""""""""""""""
" ビープ音を消す
set noerrorbells
set vb t_vb=

" viとの互換性をとらない
set nocompatible

" 改行コードの自動認識
set fileformats=unix,dos,mac

" バックスペースキーで削除出来るものを指定
" indent  : 行頭の空白
" eol     : 改行
" start   : 挿入モード開始位置より手前の文字
set backspace=indent,eol,start


""""""""""""""""""""
" バックアップ
""""""""""""""""""""
" バックアップを取らない
set nobackup

" ファイルの上書き時にのみバックアップを作る
set writebackup


""""""""""""""""""""
" 表示関連
""""""""""""""""""""
" ルーラーを表示
set ruler

" シンタックスハイライトを有効
syntax on

" コメント文の色を変更
highlight Comment ctermfg=DarkCyan

" コマンドライン補完を拡張モードにする
set wildmenu

" テキストの最大幅設定を無効
set textwidth=0

" ウインドウの幅より長い行は折り返して、次の行に続けて表示
set wrap

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/


""""""""""""""""""""
" 検索関係
""""""""""""""""""""
" 大文字小文字を判別なし
set ignorecase

" 大文字小文字が混じってたら区別
set smartcase

" 検索文字列を色付け
set hlsearch

" インクリメンタルサーチ
set incsearch


""""""""""""""""""""
" インデント
""""""""""""""""""""
" タブの左側にカーソル表示
set list

" タブ幅
set tabstop=2
set shiftwidth=2

" 自動インデントを有効
:set autoindent

" ハードタブ利用
set noexpandtab

""""""""""""""""""""
" ステータスライン
""""""""""""""""""""
" ステータスラインを常に表示
set laststatus=2
" ステータスラインに文字コードと改行文字を表示する
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" ステータスラインの色
highlight StatusLine   term=NONE cterm=NONE ctermfg=black ctermbg=white


""""""""""""""""""""
" 文字コード
""""""""""""""""""""
" 文字コードの指定
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,euc-jp,cp932,iso-2022-jp
set fileencodings+=,ucs-2le,ucs-2,utf-8

