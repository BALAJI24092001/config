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
"	Plugs stored at ~/.local/share/nvim/plugged

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
" to make functions suggestions move with tab key
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

imap <C-l> <Plug>(coc-snippets-expand)

nmap <C-m-p> <Plug>MarkdownPreview	

" add this line 'snippets.userSnippetsDirectory": (add a double quote)~/.config/nvim/snips",' to
" coc-setings.json
" then mkdir ~/.config/nvim/snips
" then touch ~/.config/nvim/snips/markdown.snippets # <- doesn't have to be called markdown
" :CocCommands snippets.editSnippets
