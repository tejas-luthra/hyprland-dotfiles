:set number


call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion

call plug#end()


nnoremap <A-f> :NERDTreeFocus<CR>
nnoremap <A-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
