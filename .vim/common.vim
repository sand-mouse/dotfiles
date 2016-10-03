syntax on

set shell=bash\ --norc

set paste

set tabstop=2
set shiftwidth=2
set autoindent
set expandtab

set incsearch
set hlsearch

set colorcolumn=80
highlight ColorColumn ctermbg=7

set fillchars+=vert:\ 
highlight VertSplit ctermbg=8 ctermfg=8

let g:indentLine_color_term = 7
let g:NERDTreeWinSize = 25
let g:tagbar_width = 25
let g:tagbar_iconchars = ['▸', '▾']

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
set laststatus=2

highlight ExtraWhitespace ctermbg=7

command! -nargs=* UTF8 call EncodeUTF8(<f-args>)
fun! EncodeUTF8(...)
   let utf8str = ""
   for i in a:000
      let utf8str .= "\\x" . i
   endfor
   exe "norm i" . eval("\"".utf8str."\"")
endfun
