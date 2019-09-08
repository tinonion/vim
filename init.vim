call plug#begin("C:/Users/Hunter/AppData/Local/nvim/plugged")

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-obsession'

call plug#end()

colo gruvbox
set bg=dark
let g:gruvbox_contrast_dark='hard'
syntax on

set expandtab
set softtabstop=4
set shiftwidth=4
set number

" general bindings
let mapleader = ","
imap jj <Esc>
nnoremap <silent> ,<space> :nohlsearch<CR>

" tab bindings
nnoremap <tab> :tabn<CR>
nnoremap <S-tab> :tabp<CR>
nnoremap <Leader><tab> :tabedit<space>

" window bindings
nnoremap <Leader>w :vsplit<space>
nnoremap <Leader>cw :hide<CR>
nnoremap <Leader>ow :only<CR>

" navigation bindings
nnoremap K {
nnoremap J }

" session bindings
au VimEnter * :Obsess
nnoremap <Leader>s :source<space>Session.vim<CR>

" terminal bindings
nnoremap <leader>t :vs term://cmd.exe<CR>iipython<CR>
tnoremap jj <C-\><C-n> 

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "-",
    \ "Renamed"   : "r",
    \ "Unmerged"  : "u",
    \ "Deleted"   : "d",
    \ "Dirty"     : "x",
    \ "Clean"     : "c",
    \ 'Ignored'   : 'i',
    \ "Unknown"   : "?"
    \ }

" oni commands
if exists('g:gui_oni')
    nnoremap <leader>d :call OniCommand("language.gotoDefinition")<CR>
    nnoremap <leader>r :call OniCommand("language.findAllReferences")<CR>
    nnoremap <leader>v :call OniCommand("vcs.sidebar.toggle")<CR>

endif
