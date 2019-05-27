call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'alessandroyorba/despacio'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/seoul256.vim'
Plug 'axvr/photon.vim'
call plug#end()

"color despacio
color photon
"color seoul256

set number
set guifont=Hack:h14 
syntax enable
set background=dark
set laststatus=2
" set textwidth=80                              " Forces screen size
highlight SignColumn guibg=black              " Set the gutter/sign to black

set nocompatible                " Do not act like vi
set encoding=utf-8
" set noshowmode                  " Don't show the mode
set nobackup
set noswapfile
filetype plugin indent on
set splitright
set splitbelow

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Configurations                                                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:let mapleader = " "                   " Change the leader key to space
map <Leader>j :%!python -m json.tool<CR> " Set 'j to format a json file

" Theme
let g:airline_theme='base16'
let g:powerline_pycmd="py3"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Forece write
if !exists(":W")
  command W w !sudo tee % > /dev/null
endif
