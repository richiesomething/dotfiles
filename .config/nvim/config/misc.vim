""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FOLDING
scriptencoding utf-8

let s:middot='·'
let s:raquo='»'
let s:small_l='ℓ'

function! Foldtext() abort
  let l:lines='[' . (v:foldend - v:foldstart + 1) . ']'
  let l:first=substitute(getline(v:foldstart), '\v *', '', '')
  let l:dashes=substitute(v:folddashes, '-', s:middot, 'g')
  return s:raquo . s:middot . l:lines . l:dashes . ': ' . l:first
endfunction


set foldmethod=manual
set foldtext=Foldtext()
nnoremap zip vi{zf
nnoremap Z za

" save view on exit, load view on enter
au BufWinLeave *.* mkview
au BufWinEnter *.* silent loadview

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" function for compiling c/cpp and showing output in new buffer
function! Redir(cmd, rng, start, end)
	for win in range(1, winnr('$'))
		if getwinvar(win, 'scratch')
			execute win . 'windo close'
		endif
	endfor
	if a:cmd =~ '^!'
		let cmd = a:cmd =~' %'
			\ ? matchstr(substitute(a:cmd, ' %', ' ' . expand('%:p'), ''), '^!\zs.*')
			\ : matchstr(a:cmd, '^!\zs.*')
		if a:rng == 0
			let output = systemlist(cmd)
		else
			let joined_lines = join(getline(a:start, a:end), '\n')
			let cleaned_lines = substitute(shellescape(joined_lines), "'\\\\''", "\\\\'", 'g')
			let output = systemlist(cmd . " <<< $" . cleaned_lines)
		endif
	else
		redir => output
		execute a:cmd
		redir END
		let output = split(output, "\n")
	endif
	vnew
	let w:scratch = 1
	setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile
	call setline(1, output)
endfunction

command! -nargs=1 -complete=command -bar -range Redir silent call Redir(<q-args>, <range>, <line1>, <line2>)
" shortcuts for cpp coding
nnoremap <leader>m :Redir !make <C-r>%<BS><BS><BS><BS><CR>
nnoremap <leader>c :Redir !make clean<CR>
nnoremap <leader>r :Redir !./<C-r>%<BS><BS><BS><BS>  

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python
let g:python_host_prog='/usr/local/bin/python3'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make transparent
let t:is_transparent = 0                                                                        
function! Toggle_transparent_background()                                                       
  if t:is_transparent == 0                                                                      
    hi Normal guibg=#111111 ctermbg=black                                                       
    let t:is_transparent = 1                                                                    
  else                                                                                          
    hi Normal guibg=NONE ctermbg=NONE                                                           
    let t:is_transparent = 0                                                                    
  endif                                                                                         
endfunction                                                                                     
nnoremap <C-x><C-t> :call Toggle_transparent_background()<CR>

autocmd VimEnter * call Toggle_transparent_background()
autocmd VimEnter * call Toggle_transparent_background()

