set nocompatible
execute pathogen#infect()
set number
set numberwidth=1
syntax on
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
Helptags
set visualbell
set confirm
set autoindent
let mapleader = " "
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>x :wq<CR>
nnoremap <leader>f :Autoformat<CR>
set backspace=indent,eol,start
nnoremap <leader>r :so ~/.vimrc<CR>
nnoremap <leader>a ggVGG
" Create file when a non-exisiting file is opened
au BufNewFile * :w
" Make one line visible above and below cursor
set scrolloff=1
set display+=lastline
" Share clipboards across terminals
set clipboard=unnamed

" IndentLines
let g:indentLine_color_tty_light = 7
let g:indentLine_color_tty_dark = 1

" Recommended settings for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Indent guides plugin
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Enabling vim-airline status bar
set laststatus=2
set ttimeoutlen=50

" Kill the capslock when leaving insert mode.
autocmd InsertLeave * set iminsert=0

" UltiSnips stuff
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<s-tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Colour schemes
set background=dark
color jellybeans
" Change line number foreground and background colours
" highlight LineNr ctermfg=white ctermbg=darkgrey
set t_Co=256
" Fixes terminal colours for the solarized colourscheme
let g:solarized_termcolors=256
" Fixes terminal colours for the base16 colourscheme
let base16colorspace=256

" NERDTree
let g:NERDTreeIndicatorMapCustom = {
			\ "Modified"	: "~",
			\ "Staged"		: "",
			\ "Untracked"	: "",
			\ "Renamed"		: "r",
			\ "Unmerged"	: "",
			\ "Deleted"		: "-",
			\ "Dirty"		: "*",
			\ "Clean"		: "",
			\ "Unknown"		: "?"
			\ }
map <leader>t :NERDTreeToggle<CR>
function! NtHlFile(ext, fg, bg, guifg, guibg)
	exec 'autocmd filetype nerdtree highlight ' . a:ext . ' ctermbg=' . a:bg . ' ctermfg=' . a:fg . ' guibg=' . a:guibg . ' guifg=' . a:guifg
	exec 'autocmd filetype nerdtree syn match ' . a:ext . ' #^\s\+.*' . a:ext . '$#'
endfunction

call NtHlFile("md", "blue", "none", "#3366FF", "#151515")
call NtHlFile("vim", "cyan", "none", "cyan", "#151515")

" Buffer things
au BufAdd,BufNewFile * nested tab sball
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <leader>b :bp<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>l :ls<CR>

" Change swap
if has("win32") || has("win64")
	set directory=$TMP
else
	set directory=/tmp
end

" Vim exec
let g:vim_exec_clear = 1
let g:vim_exec_vimux = 0
