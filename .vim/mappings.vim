cabbrev --- <C-R>=expand("%:p:h")<CR>
cabbrev ... cd ../../<CR>
cabbrev 11 !
cabbrev 22 @
cabbrev 33 #
cabbrev 55 %
cnoremap <leader>. w !sudo tee %<CR>
cabbrev gco Git checkout 
cabbrev glo Git log --stat<CR><CR>
cabbrev gp Git push origin
cabbrev gpm Git push origin master<CR>
cabbrev grhh Git reset --hard HEAD<CR>
cnoremap jj <Home>
cnoremap jk <Right>
cnoremap kj <Left>
cnoremap kk <C-f>
cnoremap kk <C-f>
cnoremap kl <End>
cabbrev ppp <C-r>"
cnoremap qq q!<CR>
cnoremap çç <Esc>
iab shrug ¯\_(ツ)_/¯<delete>
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
inoremap -. ->
iabbrev 22 @
iabbrev 33 #
iabbrev 44 $
iabbrev 55 %
inoremap ;; ::
inoremap =. =>
inoremap ff <C-x><C-f>
inoremap hh <C-x><C-l>
inoremap jj <ESC>I
inoremap jk <Right>
inoremap kj <Left>
inoremap kk <ESC>A
inoremap vv <C-x><C-v>
iabbrev zz \|
inoremap çq <ESC>:wq<CR>
inoremap çs <ESC>:w<CR>
inoremap çç <ESC>
nmap <leader>rn <Plug>(coc-rename)
nnoremap <S-TAB> gT
nnoremap <TAB> gt
nmap ga <Plug>(EasyAlign)
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap -s :vimgrep /<C-r><C-w>/g **/*<CR>
nnoremap -t :retab<CR>
nnoremap -w :help <C-r><C-w><CR>
nnoremap : ;
nnoremap ; :
nnoremap <C-c> "+yy
" nnoremap <C-e> :mksession! ~/.vim.current<CR>
nnoremap <Down> <C-W><Down>
nnoremap <F10> :NERDTreeToggle<CR>
nnoremap <F12> @c
nnoremap <F1> @g<CR>
nnoremap <F2> @p<CR>
nnoremap <F3> :Gstatus<CR>
nnoremap <F4> :bot term<CR>
nnoremap <F8> :Files<CR>
nnoremap <F9> :ProjectFiles<CR>
nnoremap <Left> <C-W><Left>
nnoremap <Right> <C-W><Right>
nnoremap <Up> <C-W><Up>
nnoremap Q @@
nnoremap <backspace> :shell<CR>
nnoremap <c-t> :Texplore<CR>
nnoremap <leader>/ :set hlsearch!<CR>
nnoremap <leader>0 :exec ToggleSpeedMode()<CR>
nnoremap <leader>1 :r ! 
nnoremap <leader>; @:
nnoremap <leader><F10> :NERDTreeClose<CR>
nnoremap <leader><F2> :exec UpdateBranch()<CR>
nnoremap <leader><F4> :qa<CR>
nnoremap <leader><space> @@
nnoremap <leader>fj :%!python -m json.tool<CR>
nnoremap <leader>n :next<CR>
nnoremap <leader>p :prev<CR>
nnoremap <leader>t :%s///g<Left><Left>
nnoremap <leader>v :vsplit ~/.vimrc<CR>
nnoremap <space><F10> :NERDTreeFind<CR>
nnoremap <space><space> :w<CR>
nnoremap <space>e :e #<CR>
nnoremap <space>f :copen<CR>
nnoremap <space>h :split<CR>
nnoremap <space>n :cn<CR>
nnoremap <space>p :cp<CR>
nnoremap <space>q :q<CR>
nnoremap <space>s :%s/
nnoremap <space>t :tabe<CR>
nnoremap <space>v :vsplit<CR>
nnoremap <space>w <C-w>
nnoremap __ :help 
nnoremap dp ddkP
nnoremap gh "+P
nnoremap hg "+y
nnoremap yp Yp
nnoremap zx ZQ
nnoremap H ^
nnoremap L $
onoremap H ^
onoremap L $
onoremap ç <esc>
tnoremap <F4> <C-w>NZQ
tnoremap <Esc> <C-\><C-n>
vnoremap : ;
vnoremap ; :
vnoremap <C-c> "*y :let @+=@*<CR>
vnoremap gh "+p
vnoremap hg "+y
xmap ga <Plug>(EasyAlign)

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

nnoremap ]c :GitGutterNextHunk<CR>
nnoremap [c :GitGutterPrevHunk<CR>

inoremap (; (<CR>);<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap (<CR> (<CR>)<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap {<CR> {<CR>}<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O
inoremap [<CR> [<CR>]<C-c>O
