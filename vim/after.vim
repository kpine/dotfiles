source ~/.vim/bindings.vim
source ~/.vim/after-plugins.vim

if filereadable(expand("~/.local.vim"))
  source ~/.local.vim
endif
