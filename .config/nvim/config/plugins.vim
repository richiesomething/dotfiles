
" PLUGINS 
"call plug#begin('~/.vim/plugged')
call plug#begin('~/.config/nvim/plugged')

" themes etc
Plug 'morhetz/gruvbox'
Plug 'roosta/srcery'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

"tmux 
Plug 'christoomey/vim-tmux-navigator'

"codeing 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'puremourning/vimspector'
Plug 'mattn/emmet-vim'
Plug 'jwalton512/vim-blade'

" wiki
Plug 'vimwiki/vimwiki', {'branch': 'dev'}
Plug 'preservim/nerdcommenter'

"FZF
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'

"code help/syntax
Plug 'tpope/vim-surround'
Plug 'bfrg/vim-cpp-modern'


"git
Plug 'dbeniamine/cheat.sh-vim'

call plug#end()
