" Default MacVim guioptions=egmrLt 
set guioptions-=T " remove toolbar
set guioptions-=r " remove right scrollbar
set guioptions-=L " remove left scrollbar
set guioptions+=c " use console for simple dialogs

" disable blinking cursor in all modes
set guicursor+=a:blinkon0

if has('gui_macvim')
  " Custom Menlo font for Powerline
  set guifont=Menlo\ Regular\ for\ Powerline:h13
  " smooth fonts
  set antialias
  set title
  set lines=60
  set columns=120
else
  " X-Windows
  set guifont=Envy\ Code\ R\ 10
endif

set background=light
