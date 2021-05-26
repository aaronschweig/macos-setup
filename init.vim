call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'gruvbox-community/gruvbox'
Plug 'jparise/vim-graphql'

Plug 'ryanoasis/vim-devicons'
call plug#end()

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

colorscheme gruvbox