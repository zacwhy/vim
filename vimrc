" ln -s /path/to/vim/vimrc ~/.vimrc

execute pathogen#infect()
syntax on
filetype plugin indent on

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set rtp+=/usr/local/opt/fzf
set path+=**

" set t_Co=256
set showcmd

set laststatus=2

set statusline=%f         " Path to the file
" set statusline+=%#LineNr#
set statusline+=%{tagbar#currenttag('\ [%s]\ ','')}
set statusline+=%=        " Switch to the right side
set statusline+=%y\ %l/%L\ 

" highlight the screen line of the cursor
set cursorline

" line number
set number relativenumber

" search
" case insensitive search
set ignorecase
" show matches while typing search command
set incsearch
" highlight all matches
set hlsearch

" display unprintable characters in insert mode
set nolist listchars=tab:▸\ ,trail:.,extends:>,precedes:<
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

inoremap kj <esc>
" inoremap <esc> <nop>

nnoremap <leader>ev :edit $MYVIMRC<cr>

" copy to Mac OS X clipboard
vnoremap <leader>y :write !pbcopy<cr><cr>

" paste from mac os x clipboard
nnoremap <leader>p :read !pbpaste<cr><cr>

" automatically source the vimrc file on save
augroup autosourcing
  autocmd!
  autocmd BufWritePost $MYVIMRC source %
augroup END

" Vimscript file settings {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
