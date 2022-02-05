call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'

call plug#end()

syntax on

" Lines
set number
set mouse=a

" Tabs size | tab = 4 spaces
set shiftwidth=4
set expandtab

"tree of arquives
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set bg=dark


" Theme
colorscheme gruvbox
