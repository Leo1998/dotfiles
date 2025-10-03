syntax on
set history=500

set tabstop=4
set shiftwidth=4
set expandtab

set number
set wrap
set incsearch
set showmode
set hlsearch
set ai

set novisualbell
set noerrorbells
set t_vb=
set tm=500

highlight Comment ctermfg=green

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

