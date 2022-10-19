set number
set relativenumber
syntax on
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start
set clipboard=unnamed
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set fileformat=unix
set background=dark
set hidden
set guicursor=i:block

call plug#begin('~/.vim/plugged')
  Plug 'morhetz/gruvbox'
  Plug 'liuchengxu/space-vim-dark'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'Yggdroot/indentLine'
  Plug 'danishprakash/vim-yami'
  "Plug 'davidhalter/jedi-vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'dense-analysis/ale'
  Plug 'psf/black'
  Plug 'ycm-core/YouCompleteMe'
call plug#end()

"let g:airline_theme='gruvbox'
let g:airline_theme='minimalist'

if (has("termguicolors"))
      set termguicolors
endif

if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

colorscheme monochrome_purp

let mapleader = ' '

" indentation line
let g:indentLine_char       = '▏'
let g:indentLine_setConceal = 0

" NERDCommenter
filetype plugin on
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

 " NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <C-n> :NERDTreeToggle<CR>

" FZF
nnoremap <silent> <C-P> :FZF<CR>

" airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'

" remaps
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>