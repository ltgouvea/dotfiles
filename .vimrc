filetype plugin on
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
nmap <F4> ;q<CR>
nmap <F5> ;w<CR>
nmap <F6> ;wq<CR>
nmap <F7> ;e<CR>
nnoremap <F8> :CtrlP<CR>
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

" - lazy maps
nnoremap <leader>8 *

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

vnoremap <leader>q ap
vnoremap 9 i(
vnoremap 0 a(
vnoremap <leader>c a{
vnoremap <leader>v a[
vnoremap <leader>p a(
vnoremap zz i<
vnoremap z a<

cnoremap <leader>. w !sudo tee %
cnoremap 55 %
cnoremap 22 @
cnoremap 33 #
cnoremap <leader>v tabe ~/.vimrc<CR>
cnoremap gp Git push origin
cnoremap gpm Git push origin master<CR>

nnoremap <space>v :vsplit<CR>
nnoremap <space>h :split<CR>
nnoremap <space>g :Gst<CR>
nnoremap <space>q :q<CR>
nnoremap <space>wq :wq<CR>
nnoremap <space>ww <C-w>r
nnoremap <space>r :so ~/.vimrc<CR>

nnoremap <Left> <C-W><Left>
nnoremap <Right> <C-W><Right>
nnoremap <Up> <C-W><Up>
nnoremap <Down> <C-W><Down>
nnoremap ; :

inoremap zz \|
inoremap ,s $
inoremap ç' "
inoremap 99 ()
inoremap 88 {}
inoremap 77 []
inoremap 00 _
inoremap 55 %
inoremap 44 $
inoremap 22 @
inoremap 33 #
inoremap =. =>
inoremap çç <ESC>
inoremap ( (<CR><CR>);<ESC>k<S-S>
inoremap { {<CR><CR>};<ESC>k<S-S>
inoremap [ [<CR><CR>];<ESC>k<S-S>
nnoremap <F10> :NERDTreeFind<CR>
nnoremap <leader>fj :%!python -m json.tool<CR>
nnoremap <leader>v <C-V>
nnoremap <leader>; @:
nnoremap <leader><space> @@
nnoremap <leader>. :w<CR>
nnoremap <space><space> :w<CR>

" VISUAL MODE RATPACK
vnoremap <leader>aa A
vnoremap <leader>b B
vnoremap <leader>d D
vnoremap <leader>g G
vnoremap <leader>s S
vnoremap <leader>w W
vnoremap <leader>e E
vnoremap <leader>p P
vnoremap <leader>o O
vnoremap <leader>r R
vnoremap <leader>v <C-v>
vnoremap <space> <esc>

let g:user_emmet_leader_key='<C-Z>'
let NERDTreeMapActivateNode='l'
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"EasyAlign
command! Sw :w !sudo tee %
command! Gst :Gstatus
command! E :e!

" pra não quebrar o youcompletemE
let g:ycm_server_python_interpreter='/usr/bin/python'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion   = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType    = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" The Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

set dir=$HOME/.vim_tmp/swap
if !isdirectory(&dir) | call mkdir(&dir, 'p', 0700) | endif
set relativenumber             " Show relative line numbers
set encoding=utf-8
