runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax on
" markdown
let g:vim_markdown_folding_disabled=1

" gotags
"     https:///github.com/jstemmer/gotags
"     go get -u github.com/jstemmer/gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" tagbar
"     https://github.com/majutsushi/tagbar
"     git submodle add  https://github.com/majutsushi/tagbar bundle/tagbar
nmap <F8> :TagbarToggle<CR>

" Some Linux distributions set filetype in /etc/vimrc.
"   Clear filetype flags before changing runtimepath to force Vim to
"   reload them.


filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on

" Go FMT
au FileType go au BufWritePre <buffer> Fmt

" Go ctags
au BufWritePost *.go silent! !ctags -R &

