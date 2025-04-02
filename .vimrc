set shiftwidth=4
set tabstop=4
set expandtab

autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])

syntax on

au VimLeave * !resetcolor
