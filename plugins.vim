set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

set omnifunc=htmlcomplete#CompleteTags
set omnifunc=csscomplete#CompleteCSS
set omnifunc=javascriptcomplete#CompleteJS

let mapleader = ' '

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Html auto complete
    Plug 'mattn/emmet-vim'
    "Git branch for managment vim
    Plug 'sodapopcan/vim-twiggy'
    "Multiple Cursor
    Plug 'vimscript/multiple-cursors'
    "Lightline Script
    Plug 'vim-scripts/lightline'
   
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'morhetz/gruvbox'
    Plug 'preservim/nerdcommenter'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'sirver/ultisnips'
    Plug 'stsewd/fzf-checkout.vim'
    Plug 'davidhalter/jedi-vim'
    Plug 'voldikss/vim-floaterm'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    
    " Angular auto complete
    Plug 'iamcco/coc-angular'

    
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'

    Plug 'nvim-lua/plenary.nvim'
    Plug 'akinsho/flutter-tools.nvim'
    
    Plug 'lambdalisue/vim-django-support'

call plug#end()

colorscheme gruvbox
let g:airline_theme='gruvbox'

if (has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
nmap <C-_> <Plug>NERDCommenterToggle<CR>gv

"NERDTree
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

"Tabs
let g:airline#extensions#tabline#enable=1
let g:airline#extensions#tabline#fnamemode=':t'

" Use deoplete.


nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>


let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

"GitGutteer
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk

" Configuration example
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F6>'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
