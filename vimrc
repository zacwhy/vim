" ln -s /path/to/vim/vimrc ~/.vimrc

" vundle
so ~/.vim/plugins.vim

" color scheme
syntax on
set t_Co=256
" highlight the screen line of the cursor
set cursorline
colorscheme onehalfdark

" line number
set number
set relativenumber

" search
" case insensitive search
set ignorecase
" show matches while typing search command
set incsearch
" highlight all matches
set hlsearch

" display unprintable characters in insert mode
set list
set listchars=tab:>-,trail:.,extends:>,precedes:<

" indentation
set expandtab
set shiftwidth=2
set softtabstop=2

set nowrap

" disable arrow keys in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" copy to Mac OS X clipboard
vnoremap <C-c> :w !pbcopy<CR><CR>
" paste from Mac OS X clipboard
" noremap <C-v> :r !pbpaste<CR><CR>

" automatically source the vimrc file on save
augroup autosourcing
  autocmd!
  autocmd BufWritePost $MYVIMRC source %
augroup END
