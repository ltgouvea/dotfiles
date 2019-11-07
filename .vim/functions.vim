function! ToggleSpeedMode() abort
    :set nu! lz! relativenumber! ruler!
    :if exists("g:syntax_on") | syntax off | else | syntax enable | endif
    :e
endfunction

function! s:find_git_root() abort
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
