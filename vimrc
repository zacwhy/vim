set nocompatible              " be iMproved

syntax on
filetype plugin indent on

set showcmd
" set path+=**
" set t_Co=256


" status line {{{

" show status line even on the last window
set laststatus=2

" Path to the file
set statusline=%f

" Statusline color
"set statusline+=%#LineNr#

" Switch to the right side
set statusline+=%=

set statusline+=%y\ %l/%L\ 

" }}}


" highlight the screen line of the cursor
"set cursorline
"set cursorcolumn

" line number
set number relativenumber


" search settings {{{

" case insensitive search
set ignorecase

" show matches while typing search command
set incsearch

" highlight all matches
set hlsearch

" }}}


" display unprintable characters in insert mode
set list
set listchars=tab:▸\ ,trail:.,extends:>,precedes:<
set tabstop=4

" indentation
set expandtab
set shiftwidth=2
set softtabstop=2

iabbrev fun function

" disable arrow keys in normal mode
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

inoremap jj <esc>

nnoremap <leader>ev :edit $MYVIMRC<cr>


" Mac OS {{{

" copy to Mac OS clipboard
vnoremap <leader>y :write !pbcopy<cr><cr>

" paste from Mac OS clipboard
nnoremap <leader>p :read !pbpaste<cr><cr>

" }}}


" automatically source the vimrc file on save {{{
augroup autosourcing
  autocmd!
  autocmd BufWritePost $MYVIMRC source %
augroup END
" }}}

" Vimscript file settings {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
