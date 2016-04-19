syntax on
filetype plugin indent on
set nocompatible
set encoding=utf8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nu
set autoindent
set cindent

if has("gui_running")
  set noimdisable
  set imi=2
  set ims=2
endif

set noswapfile
set hidden
set cursorline

if has("gui_running")
  colorscheme desert
  set bs=2
  set ruler
  set gfn=Monaco:h16
  set shell=/bin/bash
endif

let mapleader= ","

Plugin 'tpope/vim-fugitive' "git
Plugin 'tpope/vim-rvm' "rvm
Plugin 'tpope/vim-cucumber' "indent
Plugin 'Lokaltog/vim-easymotion' "cursor move
Plugin 'mattn/emmet-vim' "html input
let g:user_emmet_install_global = 0
let g:user_emmet_mode='iv'
autocmd FileType html,css,eruby EmmetInstall

Plugin 'tpope/vim-rails.git' "rails
set completefunc=syntaxcomplete#Complete

Plugin 'vim-scripts/The-NERD-Commenter' "comment

let g:indent_guides_guide_size = 1
Plugin 'nathanaelkane/vim-indent-guides'

map <silent><F7>  <leader>ig

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'scrooloose/nerdtree' "nerdtree
map <silent><F8> :NERDTree<CR>

Plugin 'kchmck/vim-coffee-script'  "coffee
autocmd BufNewFile,BufRead *.coffee set filetype=coffee

Plugin 'L9'

Plugin 'slim-template/vim-slim.git'

autocmd BufNewFile,BufRead *.slim set filetype=slim

Plugin 'kien/ctrlp.vim' "find
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.bak
let g:ctrlp_custom_ignore = '\v[\/]\.(DS_Store|git|hg|svn)|(optimized|compiled|node_modules)$'
map <c-o> :CtrlPBuffer<CR>

filetype plugin indent on
syntax on

Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'scrooloose/syntastic'

Plugin 'garbas/vim-snipmate' "code tab
Plugin 'honza/vim-snippets' "code tab
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'

Plugin 'thoughtbot/vim-rspec'
let g:rspec_command = "!bundle exec rspec {spec}"
map <Leader>c :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>t :call RunAllSpecs()<CR>

Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'docunext/closetag.vim'
Plugin 'pangloss/vim-javascript'

Plugin 'Valloric/YouCompleteMe'
let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'python':1, 'javascript': 1 }

Plugin 'FuzzyFinder'
Plugin 'vim-scripts/AutoClose'

Plugin 'Chiel92/vim-autoformat'

"au BufWrite * :Autoformat
noremap <F3> :Autoformat<CR>

Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'vim-scripts/matchit.zip'

call vundle#end()

autocmd FileType css,scss,slim,html,eruby,coffee,javascript setlocal iskeyword+=-
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4

set backspace=indent,eol,start
set t_Co=256
autocmd BufWritePre * :%s/\s\+$//e
