set shell=/bin/zsh     " コマンドの歳にはzshを使う
set shiftwidth=4       " indentの幅
set tabstop=4          " タブに変換されるサイズ
set expandtab          " タブの入力の際にスペース
set textwidth=0        " ワードラッピングなし
set autoindent         " 自動インデント :set pasteで解除
set hlsearch           " Searchのハイライト
set clipboard=unnamed  " クリップボードへの登録
syntax on              " SyntaxをEnable

" ------------------------ vim Plug --------------------------

call plug#begin()
Plug 'ntk148v/vim-horizon'
Plug 'preservim/nerdtree'
call plug#end()

" if you don't set this option, this color might not correct
set termguicolors

colorscheme horizon
" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

" or this line
let g:lightline = {'colorscheme' : 'horizon'}