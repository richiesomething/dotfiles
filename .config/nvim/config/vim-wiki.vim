""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" configs for vim wiki
let wiki = {}
let wiki.path = '~/my_wiki/'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
let g:vimwiki_list = [{'path': '~/Documents/notes/', 'syntax':'markdown', 'ext': '.md'}]
let g:vimwiki_list = [wiki]
let g:vimwiki_html_header_numbering = 2
imap <C-s> <Plug>VimwikiListNextSymbol
imap <leader><TAB> <Plug>VimwikiIncreaseLvlSingleItem
imap <leader><S-TAB> <Plug>VimwikiDecreaseLvlSingleItem
nnoremap :table :VimwikiTable
"inoremap <C-Space> <C-N> 
