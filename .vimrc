set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
set statusline=%t
set statusline+=%{fugitive#statusline()}
set number
syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set foldmethod=indent
set foldcolumn=6
map <F4> :set syn=javascript<CR>
if has("autocmd")
    au BufReadPost *.erb set syntax=javascript
    au BufReadPost *.cfc set syntax=cfscript
endif
set directory=~/.vim_backup
set backupdir=~/.vim_backup
set modeline
set ls=2
"map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle "honza/snipmate-snippets"
Bundle 'garbas/vim-snipmate'
Bundle 'ddollar/nerdcommenter'
Bundle 'saikobee/vim-javascript-syntax'
Bundle 'davejlong/cf-utils.vim'
