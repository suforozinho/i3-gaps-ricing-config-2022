set number
syntax on
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set softtabstop=4
set hlsearch
set ignorecase
let g:netrw_liststyle=3
autocmd vimenter * ++nested colorscheme dracula
"colorscheme dracula

"Emmet set to Tab instead of Ctrl+y
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"Set file type for Mundiware files
au BufRead,BufNewFile *.page set filetype=html
au BufRead,BufNewFile *.module set filetype=html
au BufRead,BufNewFile *.widget set filetype=html

"Powerline fonts for vim-airline
let g:airline_powerline_fonts = 1

nnoremap <F2> :tabp<CR>
nnoremap <F3> :tabn<CR>

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif
