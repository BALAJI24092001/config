
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
	Plug 'sbdchd/neoformat'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
	Plug 'manasthakur/vim-commentor'
	" commenting a line shortcut is 'gcc'
	" uncommenting a line shortcut is 'gc'
	" gcip will comment out inside the current paragraph, and so on.


call plug#end()




colorscheme gruvbox
nnoremap <C-t> :NERDTreeToggle<CR>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

imap <C-l> <Plug>(coc-snippets-expand)

"nmap <silent> gd <Plug>(coc-definition)

" let g:ycm_global_ycm_extra_conf = '/path/to/the/file'
" let g:ycm_confirm_extra_conf = 0


" add this line 'snippets.userSnippetsDirectory": (add a double quote)~/.config/nvim/snips",' to
" coc-setings.json
" then mkdir ~/.config/nvim/snips
" then touch ~/.config/nvim/snips/markdown.snippets # <- doesn't have to be called markdown
" :CocCommands snippets.editSnippets
"
"
"
