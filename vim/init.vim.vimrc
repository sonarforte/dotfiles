set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'" }

" Plugin 'sudar/vim-arduino-syntax' 
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-ragtag'       
" Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'scrooloose/nerdcommenter'
" Plugin 'file:///Users/steven/code/github-forks/vim-ragtag'

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
set softtabstop=4 
set expandtab 
set shiftwidth=4
set autoindent 
set incsearch       " highlights searches one at a time

let mapleader=","
nnoremap <leader>a :echo("\<leader\> works! It is set to <leader>")<CR>
syntax on

set backspace=2     " backspace works over everything in insert mode

" Use shift-enter to insert a newline before current line,
" and enter to insert one after
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
" Allow vim to access clipboard with p, d, y, etc (mac)
set clipboard=unnamed  

" Set tab to 2 spaces for html related files
autocmd BufRead,BufNewFile   *.html setlocal softtabstop=2 shiftwidth=2 
autocmd BufRead,BufNewFile   *.js setlocal softtabstop=2 shiftwidth=2 
autocmd BufRead,BufNewFile   *.json setlocal softtabstop=2 shiftwidth=2 

" <S-h> (Shift + H) toggles status line
let s:hidden_all = 1 
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=1
"        set showcmd
    endif
endfunction
nnoremap <S-h> :call ToggleHiddenAll()<CR>
call ToggleHiddenAll()

" For Plugin 'pangloss/vim-javascript'
"let g:javascript_enable_domhtmlcss = 1
let g:used_javascript_libs = 'underscore,flux,react,jquery'
let g:ragtag_global_maps = 1


" Set colors for bad spelling
hi SpellBad ctermfg=196 ctermbg=0
hi SpellCap ctermfg=51 ctermbg=232 
hi SpellRare ctermfg=15 ctermbg=1
hi SpellLocal ctermfg=15 ctermbg=0
" Mac specific !!!!
" Map better saving and exiting
nmap  ∑ :w<Enter>
nmap  ∑q :wq<Enter>

" Wrap text sanely for text and markdown files, and add spellcheck
autocmd BufRead,BufNewfile   *.md call WrapOn()
autocmd BufRead,BufNewfile   *.txt call WrapOn()

" Settings for wrapped text not code
function WrapOn()
    setlocal wrap linebreak spell spelllang=en_us
    noremap  <buffer> <silent> j gj
    noremap  <buffer> <silent> k gk
    noremap  <buffer> <silent> 0 g0
    noremap  <buffer> <silent> $ g$
endfunction
