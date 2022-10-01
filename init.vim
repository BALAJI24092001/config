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
set encoding=UTF-8
:set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
			\,a:blinkon100
" Curson line insert mode and curson block in command mode
" blinkon 100 milliseconds
	


call plug#begin()
"	Plugs stored at ~/.local/share/nvim/plugged

	Plug 'vim-airline/vim-airline-themes'
	Plug 'morhetz/gruvbox'											" Color Scheme
	Plug 'nvim-treesitter/nvim-treesitter'									" Better syntax highlighting
	Plug 'scrooloose/nerdtree'										" Directory items
	Plug 'jiangmiao/auto-pairs'										" Pairing braces
	Plug 'kyazdani42/nvim-web-devicons'  									" needed for galaxyline icons
	Plug 'vim-airline/vim-airline'										" status bar
	Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}			" conqueror of code for auto code completion 
	Plug 'sbdchd/neoformat'											" Unknown
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }				" Browser preview of markdown file
	Plug 'manasthakur/vim-commentor' 									" For commenting gcc, gc and gcip
"	Plug 'mg979/vim-visual-multi', {'branch': 'master'}							" multiple cursors
	Plug 'ryanoasis/vim-devicons'										" Adding icon based on file type
	Plug 'https://github.com/preservim/tagbar' 								" Tagbar for code navigation, variables, maps, imports etc...
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

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





" to make functions suggestions move with tab key
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
imap <C-l> <Plug>(coc-snippets-expand)
nnoremap <C-m-p> <Plug>MarkdownPreview	


nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-v> :TagbarToggle<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap ,<space> :nohlsearch<CR>
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>



colorscheme gruvbox


" add this line 'snippets.userSnippetsDirectory": (add a double quote)~/.config/nvim/snips",' to
" coc-setings.json
" then mkdir ~/.config/nvim/snips
" then touch ~/.config/nvim/snips/markdown.snippets # <- doesn't have to be called markdown
" :CocCommands snippets.editSnippets
