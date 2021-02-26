nnoremap <leader>ss :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>= :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <CR><CR> i<CR><ESC>
nnoremap <S-TAB> :bprevious<CR>
nnoremap <TAB> :bnext<CR>
nnoremap <silent>;; :q<CR>
nnoremap M '

nmap Q q

imap jk <ESC>
imap kj <ESC>
imap ;; <ESC>A;
imap aa <ESC>A

" move visually secected region up and down
xnoremap K :move '<-2<CR>gv=gv
xnoremap J :move '>+1<CR>gv=gv
cnoremap W w



let g:user_emmet_leader_key=','
let g:user_emmet_settings = {'indentation' : '   '}
