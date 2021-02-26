let mapleader = " "

for f in globpath('~/.config/nvim/config', '*.vim', 0, 1, 0)
    execute 'source' f
endfor

colorscheme srcery















