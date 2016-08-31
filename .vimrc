"Vimモードにする
set nocompatible

" 行番号の表示
set nu

" カーソル行を強調表示しない
set nocursorline

" 挿入モードの時のみ、カーソル行をハイライトする
autocmd InsertEnter,InsertLeave * set cursorline!

" 右下に表示される行・列の番号を表示
set ruler

" 自動インデントを有効にする
set autoindent
 
" タブを表示する時の幅
set tabstop=4
 
" 自動で挿入されるインデントの幅
set shiftwidth=4

" タブの代わりに半角スペースを挿入
set expandtab 

" タブ入力時の幅を4に設定
set softtabstop=4
 
" 閉じ括弧入力時に対応する括弧の強調
set showmatch
 
" showmatch設定の表示秒数(0.1秒単位)
set matchtime=4
 
" インクリメンタルサーチを行う(検索文字入力中から検索)
set incsearch
 
" 文字列検索で大文字小文字を区別しない
set ignorecase
 
" 文字列検索でマッチするものをハイライト表示する
set hlsearch
 
" 検索文字に大文字が含まれる場合にignorecaseをOFFにする(大文字小文字を区別する)
set smartcase
 
" コマンドラインにおける補完候補の表示
set wildmenu
 
" Deleteキーを有効にする
set t_kD=^?
 
" バックスペースキーの動作を普通のテキストエディタと同じようにする
set backspace=indent,eol,start
 
" シンタックスを有効にする(コードをカラーを付けて見やすくする)
syntax enable
 
" カラー設定
colorscheme torte

" エンコーディングをutf8に設定
set encoding=utf8

" ファイルエンコードをutf8に設定
set fileencoding=utf-8

" 編集中のファイル名を表示
set title

" ウィンドウの幅より長い行は折り返して表示
set wrap

" 自動改行禁止
set textwidth=0
" gvim用
autocmd FileType text setlocal textwidth=0


"""""""""""""""" マッピング
let mapleader = "\<Space>"
"タブ用マッピング
nnoremap [TABCMD]  <nop>
nmap     <leader>t [TABCMD]

nnoremap <silent> [TABCMD]f :<c-u>tabfirst<cr>
nnoremap <silent> [TABCMD]l :<c-u>tablast<cr>
nnoremap <silent> [TABCMD]n :<c-u>tabnext<cr>
nnoremap <silent> [TABCMD]b :<c-u>tabNext<cr>
nnoremap <silent> [TABCMD]p :<c-u>tabprevious<cr>
nnoremap <silent> [TABCMD]e :<c-u>tabedit<cr>
nnoremap <silent> [TABCMD]r :<c-u>tabclose<cr>
nnoremap <silent> [TABCMD]o :<c-u>tabonly<cr>
nnoremap <silent> [TABCMD]s :<c-u>tabs<cr>

"ウィンドウ用マッピング
nnoremap [WINCMD]  <nop>
nmap     <leader>w [WINCMD]

nnoremap [WINCMD]h <c-w>h
nnoremap [WINCMD]j <c-w>j
nnoremap [WINCMD]k <c-w>k
nnoremap [WINCMD]l <c-w>l

nnoremap [WINCMD]> <c-w>>
nnoremap [WINCMD]< <c-w><

" 見た目によるカーソル移動をする(1行が複数行に渡って表示されている時に表示上の行ごとに上下移動させる)
noremap j gj
noremap k gk

" ctrl h,l,j,kによる移動
noremap <leader>j   <S-L>
noremap <leader>k   <S-H>
noremap <leader>h   ^
noremap <leader>l   $

" netrw関連
" netrwは常にtree view
let g:netrw_liststyle = 3
map <leader>nt :Ntree<CR>
map <leader>nf :e .<CR>
