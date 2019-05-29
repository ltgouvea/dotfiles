function! UpdateBranch()
    Git fetch --all
    Git pull origin develop
endfunction

function! ToggleSpeedMode()
    :set nu! lz! relativenumber! ruler!
    :if exists("g:syntax_on") | syntax off | else | syntax enable | endif
    :e
endfunction

function! ToggleAim()
    :set cursorcolumn! cursorline!
endfunction

function! ToggleNumbers()
    :set nu! relativenumber!
endfunction

function! ToggleFolding()
    :if &foldcolumn ==# 0 | set foldcolumn=1 foldmethod=indent | else | set foldcolumn=0 foldmethod=manual | endif
endfunction

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
