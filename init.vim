:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'vim-airline/vim-airline' "Status Bar
Plug 'preservim/nerdtree' "Nerd Tree
Plug 'ryanoasis/vim-devicons' "Nice folder icons
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'udalov/kotlin-vim'
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
Plug 'pangloss/vim-javascript' "JS syntax highlighting
Plug 'maxmellon/vim-jsx-pretty' "JSX syntax highlighting
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'beeender/Comrade'

call plug#end()

nnoremap p P
nnoremap P "0p

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <F3> :TagbarToggle<CR>

" coc map
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Use deoplete.
let g:deoplete#enable_at_startup = 1
