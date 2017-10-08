set nu
set linebreak
set ruler
set wildmenu
set mouse=a
set timeoutlen=1000 ttimeoutlen=0
call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-commentary'
Plug 'bling/vim-airline'
Plug 'junegunn/fzf'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'powerline/fonts'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-surround'
Plug 'xsbeats/vim-blade'
Plug 'kien/rainbow_parentheses.vim'
Plug 'dylanaraps/wal.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
call plug#end()
colorscheme wal
highlight Normal ctermbg=none
highlight NonText ctermbg=none 
highlight LineNr ctermfg=LightGreen
let g:airline_powerline_fonts = 1
let g:airline_theme='wal'
set signcolumn=yes
nmap <TAB> gt
nmap <S-TAB> gT
nmap <F5> ;edit<CR>
nnoremap <F9> :FZF<CR>
let mapleader=","
nnoremap <leader>q viw<esc>a"<esc>bi"<esc>lel
nmap <leader>. :w<CR>
nmap <Left> <C-W><Left>
nmap <Right> <C-W><Right>
nnoremap ; :
inoremap ((<tab> (<CR><CR>);<ESC>k<S-S>
inoremap {{<tab> {<CR><CR>};<ESC>k<S-S>
inoremap [[<tab> [<CR><CR>];<ESC>k<S-S>
nnoremap <F10> :NERDTreeToggle<CR>
let g:user_emmet_leader_key='<C-Z>'
"EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"EasyAlign
command! Sw :w !sudo tee %
command! Gst :Gstatus
command! QQ :q!
" pra não quebrar o youcompletemE
let g:ycm_server_python_interpreter='/usr/bin/python'
set ic
set incsearch
set autoread
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
" K = grep under cursor.
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
set dir=$HOME/.vim_tmp/swap
if !isdirectory(&dir) | call mkdir(&dir, 'p', 0700) | endif
set relativenumber             " Show relative line numbers
set encoding=utf-8
