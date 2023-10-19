lua require('plugins')

source ~/.config/nvim/config.vim

colorscheme catppuccin
lua require('plugins.nvim-tree')
lua require('plugins.nvim-treesitter')
lua require('plugins.nvim-lspconfig')
lua require('plugins.nvim-cmp')

source ~/.config/nvim/keys.vim

call plug#begin()
Plug 'lervag/vimtex'
Plug 'dhruvasagar/vim-dotoo'
call plug#end()

source ~/.config/nvim/keys.vim
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

let g:vimtex_compiler_method = 'latexrun'

let maplocalleader = ","
