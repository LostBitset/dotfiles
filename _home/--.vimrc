" Activate syntax highlighting
syntax on

" Activate autoindent
filetype plugin indent on

" Enable use of ocp-indent
set rtp^="/home/lpc/.opam/4.14.0/share/ocp-indent/vim"

" Activate ocp-indent for OCaml code
autocmd FileType ocaml source /home/lpc/.opam/4.14.0/share/ocp-indent/vim/indent/ocaml.vim

" Remap C-j and C-k to moving lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

