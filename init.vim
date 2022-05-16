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
:set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
			\,a:blinkon100
" Curson line insert mode and curson block in command mode
" blinkon 100 milliseconds
	


call plug#begin()
"	Plugs stored at ~/.local/share/nvim/plugged

	Plug 'vim-airline/vim-airline-themes'
	Plug 'morhetz/gruvbox'
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'scrooloose/nerdtree'
	Plug 'jiangmiao/auto-pairs'
"	Plug 'kyazdani42/nvim-web-devicons'  " needed for galaxyline icons
	Plug 'vim-airline/vim-airline'
	Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
	Plug 'sbdchd/neoformat'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
	Plug 'manasthakur/vim-commentor'
	Plug 'ryanoasis/vim-devicons'

	" toggle commenting a line shortcut is 'gcc'
	" gcip will comment out inside the current paragraph, and so on.


call plug#end()


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#branch#enabled=1
let g:airline_theme='distinguished'
let g:mkdp_theme='light'
" for markdown preview background white color
" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"



nnoremap <C-t> :NERDTreeToggle<CR>



" to make functions suggestions move with tab key
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
imap <C-l> <Plug>(coc-snippets-expand)
nmap <C-m-p> <Plug>MarkdownPreview	


colorscheme gruvbox


" add this line 'snippets.userSnippetsDirectory": (add a double quote)~/.config/nvim/snips",' to
" coc-setings.json
" then mkdir ~/.config/nvim/snips
" then touch ~/.config/nvim/snips/markdown.snippets # <- doesn't have to be called markdown
" :CocCommands snippets.editSnippets
