""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimspector settins
let g:vimspector_enable_mapping = 'HUMAN'

nmap vc <Plug>VimspectorContinue<CR>
nmap vr <Plug>VimspectorRestart<CR>
nmap vb <Plug>VimspectorToggleBreakpoint<CR>
nmap vn <Plug>VimspectorStepOver<CR>
nmap vs <Plug>VimspectorStepInto<CR>
nmap vc <Plug>VimspectorRunToCursor<CR>
nnoremap vl :call vimspector#Launch()<CR>
nnoremap vrr :VimspectorReset<CR>
nnoremap vcb :call vimspector#ClearBreakpoints()<CR>

let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.php'


let g:user_emmet_leader_key=','
let g:user_emmet_settings = {'indentation' : '   '}

let g:vimspector_enable_mapping = 'HUMAN'

let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.php'
