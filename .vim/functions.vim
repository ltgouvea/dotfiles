function! UpdateBranch()
    Git fetch --all
    Git pull origin develop
endfunction

function! ToggleSpeedMode()
    :set nu! lz! relativenumber! ruler!
    :if exists("g:syntax_on") | syntax off | else | syntax enable | endif
    :e
endfunction

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
