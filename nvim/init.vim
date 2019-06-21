set runtimepath^=~/.vim runtimepath+=~/.vim/after
set inccommand=nosplit
let &packpath = &runtimepath
source ~/.vim/plugins.vim
source ~/.vim/settings.vim
source ~/.vim/mappings.vim
source ~/.config/nvim/macros.nvim
source ~/.vim/functions.vim
source ~/.lightline.vimrc
source ~/.nvimrc
