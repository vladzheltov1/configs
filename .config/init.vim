:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " Fancy statusbar
Plug 'https://github.com/preservim/nerdtree'      " Directory tree
Plug 'https://github.com/tpope/vim-commentary'    " Commentary
Plug 'https://github.com/ap/vim-css-color'        " CSS color preview
Plug 'https://github.com/tc50cal/vim-terminal'    " Terminal
Plug 'https://github.com/morhetz/gruvbox'         " Theme

set encoding=UTF-8

call plug#end()

" NerdTree hotkeys
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Open search on F2
noremap <F2> :NERDTreeFocus <BAR> call feedkeys('/') <CR>

" Save on ctrl+s
imap <C-s> <esc>:w<CR>

" Save and Exit on F5
imap <F5> <esc>:wqa<CR>
nmap <F5> <esc>:wqa<CR>

" Focus
nmap <C-S-e> <esc>:wincmd p<CR>

" Auto close braces
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" Colorscheme
set termguicolors
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox
hi LspCxxHlGroupMemberVariable guifg=#83a598

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
