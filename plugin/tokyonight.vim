" plugin/tokyonight.vim

if exists('g:loaded_tokyonight')
  finish
endif
let g:loaded_tokyonight = 1

" Default style
if !exists('g:tokyonight_style')
  let g:tokyonight_style = 'night'
endif
