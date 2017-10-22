set nu
set ic
set incsearch
set autoread
set linebreak
set ruler
set wildmenu
set wildignorecase
set mouse=a
set timeoutlen=1000 ttimeoutlen=0

call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
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
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='wal'
let mapleader=","
set signcolumn=yes
nmap <TAB> gt
nmap <S-TAB> gT
nmap <F5> ;edit<CR>
nnoremap <F9> :FZF<CR>
nnoremap <leader>t :tabe<CR>
nnoremap <leader>k K

" Selection shortcuts
" - inside motions
nnoremap <leader>ic vi{
nnoremap <leader>ip vi(
nnoremap <leader>iv vi[
nnoremap <leader>it vit

" - around motions
nnoremap <leader>aa ggvG
nnoremap <leader>ac va{
nnoremap <leader>ap va(
nnoremap <leader>av va[
nnoremap <leader>at vat

" Deletion shortcuts
" - inside motions
nnoremap <leader>dc di{
nnoremap <leader>dp di(
nnoremap <leader>dv di[
nnoremap <leader>dt dit
"
" - around motions
nnoremap <leader>dcc da{
nnoremap <leader>dpp da(
nnoremap <leader>dvv da[
nnoremap <leader>dtt dat

" Paste shortcuts
" - inside motions
nnoremap yp Yp
nnoremap <leader>yc yi{
nnoremap <leader>yp yi(
nnoremap <leader>yv yi[
nnoremap <leader>yt yit

" - around motions
nnoremap <leader>ycc ya{
nnoremap <leader>ypp ya(
nnoremap <leader>yvv ya[
nnoremap <leader>ytt yat

" Indentation shortcuts
" - inside motions
nnoremap <leader>fc =i{
nnoremap <leader>fp =i(
nnoremap <leader>fv =i[
nnoremap <leader>ft =it

" - around motions
nnoremap <leader>fcc =a{
nnoremap <leader>fpp =a(
nnoremap <leader>fvv =a[
nnoremap <leader>ftt =at

" - operator pending maps
onoremap z a<
onoremap \ i<
onoremap q ip
onoremap c i{
onoremap v i[
onoremap p i(

onoremap <space>q ap
onoremap <space>c a{
onoremap <space>v a[
onoremap <space>p a(

nnoremap <leader>aa A
nnoremap <leader>b B
nnoremap <leader>c C
nnoremap <leader>i I
nnoremap <leader>y Y
nnoremap <leader>d D
nnoremap <leader>g G
nnoremap <leader>s S
nnoremap <leader>w W
nnoremap <leader>e E
nnoremap <leader>p P
nnoremap <leader>o O
nnoremap <leader>r R
nnoremap <leader>x :e!<CR>

nnoremap ç ~
vnoremap ç ~

nnoremap <leader>qq viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>qd viw<esc>a"<esc>bi"<esc>lel
vnoremap <leader>qq iw<esc>a'<esc>bi'<esc>lel
vnoremap <leader>qd iw<esc>a"<esc>bi"<esc>lel
vnoremap <leader>4 $
vnoremap <leader>5 $

cnoremap <leader>. w !sudo tee %
cnoremap <leader>5 %
cnoremap <leader>v tabe ~/.vimrc<CR>

nnoremap <space>v :vsplit<CR>
nnoremap <space>h :split<CR>
nnoremap <space>g :Gst<CR>
nnoremap <space>q :q<CR>
nnoremap <space>wq :wq<CR>
nnoremap <space>r :so ~/.vimrc<CR>

noremap <leader>. :w<CR>
noremap <Left> <C-W><Left>
noremap <Right> <C-W><Right>
noremap <Up> <C-W><Up>
noremap <Down> <C-W><Down>
nnoremap ; :

inoremap 99 (
inoremap 00 )
inoremap =. =>
inoremap çç <ESC>
inoremap ((<tab> (<CR><CR>);<ESC>k<S-S>
inoremap {{<tab> {<CR><CR>};<ESC>k<S-S>
inoremap [[<tab> [<CR><CR>];<ESC>k<S-S>
nnoremap <F10> :NERDTreeFind<CR>
nnoremap <leader>fj :%!python -m json.tool<CR>
nnoremap <leader>v <C-V>
nnoremap <leader>; @:
nnoremap <leader><space> @@

" VISUAL MODE RATPACK
vnoremap <leader>aa A
vnoremap <leader>b B
vnoremap <leader>c C
vnoremap <leader>d D
vnoremap <leader>g G
vnoremap <leader>s S
vnoremap <leader>w W
vnoremap <leader>e E
vnoremap <leader>p P
vnoremap <leader>o O
vnoremap <leader>r R
vnoremap <space> <esc>

let g:user_emmet_leader_key='<C-Z>'
let NERDTreeMapActivateNode='l'

"EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"EasyAlign
command! Sw :w !sudo tee %
command! Gst :Gstatus
command! E :e!
" pra não quebrar o youcompletemE
let g:ycm_server_python_interpreter='/usr/bin/python'
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
