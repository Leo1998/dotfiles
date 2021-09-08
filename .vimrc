syntax on
set history=500

set tabstop=2
set shiftwidth=2
set expandtab

set ai
set number
set hlsearch
set ruler

set novisualbell
set noerrorbells
set t_vb=
set tm=500

highlight Comment ctermfg=green

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

try
  colorscheme desert
catch
endtry
