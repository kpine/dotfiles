set nocompatible

" ================ Plugins (by Vundle) ====================

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

filetype plugin indent on  " Automatically detect file types. (must turn on after Vundle)
