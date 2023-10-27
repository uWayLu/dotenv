source $VIMRUNTIME/defaults.vim
source $VIMRUNTIME/../vimfiles/archlinux.vim

"https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
set shiftwidth=4 smarttab
set expandtab
set tabstop=8 softtabstop=0
"""
"vim clipboard on wayland
"https://github.com/vim/vim/issues/5157
xnoremap "+y y:call system("wl-copy", @")<cr>
nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
nnoremap "*p :let @"=substitute(system("wl-paste --no-newline --primary"), '<C-v><C-m>', '', 'g')<cr>p
