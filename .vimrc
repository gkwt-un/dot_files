syntax on "構文ごとに色分けする
set ignorecase
set incsearch
set hlsearch
"set cursorline "カーソルのある行を強調表示
set showmatch "対応する括弧を強調
set matchtime=1 "括弧強調時間を0.1秒の1倍にする
set number
set tabstop=4
set shiftwidth=4 ">> 等のコマンドや自動インデントの際に使う1レベル分のインデント量
"set ambiwidth=double "全角文字の幅を2に固定
set smartindent
set nocompatible "viとの互換性をとらない




" insモードとnormalモードでカーソル形状を変える
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"


" 日本語対策
set imdisable "挿入モードから抜ける際、入る際に必ずIMEがオフになる
" 挿入モード終了時に IME 状態を保存しない
inoremap <silent> <Esc> <Esc>
inoremap <silent> <C-[> <Esc>

" 「日本語入力固定モード」切り替えキー
" ->要プラグインインストール
" C-j でIMEのon/offを切り替え
" inoremap <silent> <C-j> <C-^> 


" ディレクトリ閲覧時の表示がツリー形式に
let g:netrw_liststyle=3


" #############################################################
" for plugin


" ファイルタイプ自動検出を無効化
filetype off            " for vundle

if has("vim_starting")
	" 初回起動時のみruntimepathにneobundleのパスを指定する
	set rtp+=$HOME/_vim/bundle/neobundle.vim/
	" 古い？
	"call neobundle#rc(expand('~/_vim/bundle'))
endif

" Required:
" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" NeoBundleをNeoBundle自体で管理する
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'


" NeoBundle
" **インストールするプラグインをここに記述**
" NeoBundleの後に続いて書かれているパスはgithub上でのリポジトリの場所

" 入力補完
"NeoBundle 'git://github.com/Shougo/neocomplcache.git'

" ctagsをファイル保存時に自動実行できる
NeoBundle 'soramugi/auto-ctags.vim'
" ファイル保存時に自動でctagsを実行
let g:auto_ctags = 1
" tagsファイルを読み込む
" set tags+=.svn/tags
" tagsを作成するディレクトリを指定
" let g:auto_ctags_directory_list = ['.git', '.svn']
" ctagsのオプション指定
" let g:auto_ctags_tags_args = '--tag-relative --recurse --sort=yes'
" 開いてるファイルタイプ専用のtagsを作成
" let g:auto_ctags_filetype_mode = 1


" ファイルオープンを便利に
"NeoBundle 'Shougo/unite.vim'

" Unite.vimで最近使ったファイルを表示できるようにする
"NeoBundle 'Shougo/neomru.vim'

" color scheme
" カラースキーム一覧表示に Unite.vim を使う
"NeoBundle 'ujihisa/unite-colorscheme'
" vim-vitamins
"NeoBundle 'fmoralesc/vitamins'
" tomorrow_ne
"NeoBundle 'chriskempson/Tommorow-ne'
" ir_black
"NeoBundle 'twerth/ir_black'
" moria
"NeoBundle 'vim-scripts/moria'
" カラー設定
" unite-colorschemeを使用すれば不要
"colorscheme moria

" Required:
call neobundle#end()

" NeoBundleCheck を走らせ起動時に未インストールプラグインをインストールする
" NeoBundleCheck


" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on


