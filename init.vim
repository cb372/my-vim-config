set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin()

" General
Plug 'scrooloose/nerdcommenter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-unimpaired'
Plug 'godlygeek/tabular'
"Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " TODO remove this as it conflicts with/is superseded by coc.nvim
Plug 'mattn/emmet-vim'
Plug 'justinmk/vim-sneak'
Plug 'embear/vim-localvimrc'
Plug 'aserebryakov/vim-todo-lists'
Plug 'chrisbra/csv.vim'

" Filesystem/search
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Tags
Plug 'majutsushi/tagbar'
Plug 'craigemery/vim-autotag'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Haskell
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'Twinside/vim-hoogle', { 'for': 'haskell' }

" JS/React
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'

" Idris
Plug 'idris-hackers/idris-vim'

" Elm
Plug 'elmcast/elm-vim'

" LSP
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

call plug#end()

for fpath in split(globpath('~/.config/nvim/config', '*.vim'), '\n')
  exe 'source' fpath
endfor
