set tabstop=4
set softtabstop=4
set shiftwidth=4
set exrc
set nowrap
set expandtab
set smartindent
set guicursor=
set nu
set relativenumber
set signcolumn=yes
set incsearch
set nohlsearch
set hidden
set noerrorbells
set scrolloff=8
set cmdheight=2
set updatetime=50
set colorcolumn=100

nnoremap zf <cmd>Telescope find_files<cr>
nnoremap zg <cmd>Telescope live_grep<cr>
nnoremap zb <cmd>Telescope buffers<cr>
nnoremap zh <cmd>Telescope help_tags<cr>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

map <F3> :Copilot enable<cr>
map <F2> :Copilot disable<cr>

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<tab>\<c-r>=coc#on_enter()\<CR>"

:colorscheme slate

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'github/copilot.vim'
call plug#end()
