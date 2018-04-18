" ln -s /path/to/vim/vimrc ~/.vimrc

" vundle
so ~/.vim/plugins.vim

" color scheme
syntax on
set t_Co=256
" highlight the screen line of the cursor
set cursorline
colorscheme onedark

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
set listchars=tab:▸\ ,trail:.,extends:>,precedes:<
set tabstop=4

" indentation
set expandtab
set shiftwidth=2
set softtabstop=2

" disable arrow keys in normal mode
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

inoremap kj <esc>
inoremap <esc> <nop>

nnoremap <leader>ev :e $MYVIMRC<cr>

" copy to Mac OS X clipboard
vnoremap <leader>y :w !pbcopy<cr><cr>

" paste from mac os x clipboard
nnoremap <leader>p :r !pbpaste<cr><cr>

" automatically source the vimrc file on save
augroup autosourcing
  autocmd!
  autocmd BufWritePost $MYVIMRC source %
augroup END
