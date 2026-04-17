" autoload/tokyonight.vim
" TokyoNight Night palette for Vim

function! tokyonight#get_colors() abort
  return {
    \ 'bg':               '#1a1b26',
    \ 'bg_dark':          '#16161e',
    \ 'bg_dark1':         '#0c0e14',
    \ 'bg_highlight':     '#292e42',
    \ 'bg_popup':         '#16161e',
    \ 'bg_search':        '#3d59a1',
    \ 'bg_sidebar':       '#16161e',
    \ 'bg_statusline':    '#16161e',
    \ 'bg_visual':        '#283457',
    \ 'black':            '#15161e',
    \ 'blue':             '#7aa2f7',
    \ 'blue0':            '#3d59a1',
    \ 'blue1':            '#2ac3de',
    \ 'blue2':            '#0db9d7',
    \ 'blue5':            '#89ddff',
    \ 'blue6':            '#b4f9f8',
    \ 'blue7':            '#394b70',
    \ 'border':           '#15161e',
    \ 'border_highlight': '#27a1b9',
    \ 'comment':          '#565f89',
    \ 'cyan':             '#7dcfff',
    \ 'dark3':            '#545c7e',
    \ 'dark5':            '#737aa2',
    \ 'error':            '#db4b4b',
    \ 'fg':               '#c0caf5',
    \ 'fg_dark':          '#a9b1d6',
    \ 'fg_gutter':        '#3b4261',
    \ 'fg_sidebar':       '#a9b1d6',
    \ 'green':            '#9ece6a',
    \ 'green1':           '#73daca',
    \ 'green2':           '#41a6b5',
    \ 'hint':             '#1abc9c',
    \ 'info':             '#0db9d7',
    \ 'magenta':          '#bb9af7',
    \ 'magenta2':         '#ff007c',
    \ 'orange':           '#ff9e64',
    \ 'purple':           '#9d7cd8',
    \ 'red':              '#f7768e',
    \ 'red1':             '#db4b4b',
    \ 'teal':             '#1abc9c',
    \ 'terminal_black':   '#414868',
    \ 'warning':          '#e0af68',
    \ 'yellow':           '#e0af68',
    \ 'diff_add':         '#243e4a',
    \ 'diff_change':      '#1f2231',
    \ 'diff_delete':      '#4a272f',
    \ 'diff_text':        '#394b70',
    \ 'git_add':          '#449dab',
    \ 'git_change':       '#6183bb',
    \ 'git_delete':       '#914c54',
    \ 'git_ignore':       '#545c7e',
  \ }
endfunction

function! tokyonight#hi(group, fg, bg, attr) abort
  let l:cmd = 'highlight ' . a:group
  let l:cmd .= ' guifg=' . (a:fg !=# '' ? a:fg : 'NONE')
  let l:cmd .= ' guibg=' . (a:bg !=# '' ? a:bg : 'NONE')
  let l:cmd .= ' gui='   . (a:attr !=# '' ? a:attr : 'NONE')
  let l:cmd .= ' cterm=' . (a:attr !=# '' ? a:attr : 'NONE')
  execute l:cmd
endfunction

