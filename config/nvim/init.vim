:set number
:set relativenumber
:set smarttab
:set autoindent

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'Mofiqul/dracula.nvim' " Dracula colors
call plug#end()


nnoremap <A-f> :NERDTreeFocus<CR>
nnoremap <A-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Dracula Colorscheme
:colorscheme dracula

"COC Tab Auto Completion
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
