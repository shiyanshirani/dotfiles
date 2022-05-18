set nocompatible
set termguicolors

call plug#begin()
	Plug 'flazz/vim-colorschemes'
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'sheerun/vim-polyglot'
	Plug 'davidhalter/jedi-vim'
	Plug 'deoplete-plugins/deoplete-jedi'
	Plug 'sainnhe/gruvbox-material'
	Plug 'ntpeters/vigrim-better-whitespace'
call plug#end()

let g:better_whitespace_enabled=0
let g:strip_whitespace_on_save=0
let g:airline_theme='minimalist'

syntax on
colorscheme gruvbox
set nu
:set cursorline

" key remapings

map <C-n> :NERDTreeToggle<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
