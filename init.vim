set background=dark
set clipboard=unnamedplus
set cursorline
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set t_Co=256
set ttyfast
set encoding=utf-8

	
" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"



call plug#begin()

	Plug 'morhetz/gruvbox'
	Plug 'scrooloose/nerdtree'
	Plug 'jiangmiao/auto-pairs'
	Plug 'kyazdani42/nvim-web-devicons'  " needed for galaxyline icons
	Plug 'vim-airline/vim-airline'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'scrooloose/nerdcommenter'
	Plug 'sbdchd/neoformat'


call plug#end()




colorscheme gruvbox
nnoremap <C-t> :NERDTreeToggle<CR>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


"nmap <silent> gd <Plug>(coc-definition)

" let g:ycm_global_ycm_extra_conf = '/path/to/the/file'
" let g:ycm_confirm_extra_conf = 0

