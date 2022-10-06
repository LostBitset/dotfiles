set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set guifont=Fira\ Code:h15

call plug#begin()

Plug 'luochen1990/rainbow'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mhartington/oceanic-next'
Plug 'tikhomirov/vim-glsl'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'lambdalisue/fern.vim'

call plug#end()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> \     pumvisible() ? "\<C-p>" : "\\"
inoremap <expr> ;     pumvisible() ? asyncomplete#close_popup() : ";"

inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"

colorscheme OceanicNext

let g:cursorhold_updatetime = 100

nnoremap <M-[> <C-w>v<C-w><C-w>:terminal<CR>65<C-w><bar><C-w><C-w>
nnoremap <M-]> <C-w>v<C-w><C-w>:terminal<CR>65<C-w><bar>

nnoremap <C-l> i<C-l><C-\><C-n>

nnoremap <M-W> <C-w><C-w>:q<CR>

nnoremap <M-s> :Fern . -drawer<CR><C-w><C-w>

nnoremap <M-k> <C-w><C-w>:w<CR><C-w><C-w>

let g:lsp_document_code_action_signs_enabled = 0
