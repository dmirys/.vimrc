set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable custom .vimrc to override settings for particular projects
set exrc

" Protect custom .vimrc to write files, execute shell commands, etc.
set secure

""" Visibility
set number
set title

""" Formatting settings
set tabstop=4
set softtabstop=4
set shiftwidth=4

autocmd FileType c setl tabstop=4 softtabstop=4 shiftwidth=4 cindent
autocmd FileType cpp setl tabstop=4 softtabstop=4 shiftwidth=4 cindent
autocmd FileType html setl smarttab tabstop=2 shiftwidth=2 sts=2 autoindent expandtab

""" Shortcuts
" Save, compile and run C++ application (< removes dot and extension from the file name) http://vim.wikia.com/wiki/Get_the_name_of_the_current_file
map <F5> :w <CR> :!clang++ %:p -o %:r && %:r <CR>

set hlsearch " highlight all search results on the page

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
