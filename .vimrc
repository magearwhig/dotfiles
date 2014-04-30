set nocompatible
set clipboard=unnamed
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
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
    au BufReadPost *.ejs set syntax=html
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
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'ddollar/nerdcommenter'
Plugin 'saikobee/vim-javascript-syntax'
Plugin 'davejlong/cf-utils.vim'

call vundle#end()            " required
filetype plugin indent on    " required
