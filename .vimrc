:colo default
:syntax on

:set expandtab
:set softtabstop=4
:set shiftwidth=4
:set number

:let mapleader = ","
:imap jj <Esc>
:nnoremap <silent> ,<space> :nohlsearch<CR>

" tab bindings
:nnoremap <tab> :tabn<CR>
:nnoremap <S-tab> :tabp<CR>
:nnoremap <Leader><tab> :tabedit<space>

" window bindings
:nnoremap <Leader>w :vsplit<space>
:nnoremap <Leader>cw :hide<CR>
:nnoremap <Leader>ow :only<CR>

" navigation bindings
:nnoremap K {
:nnoremap J }

" session bindings
:nnoremap <Leader>s :source<space>~/.vim/sessions/
