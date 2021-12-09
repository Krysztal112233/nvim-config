" Plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'flazz/vim-colorschemes'
Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'kien/rainbow_parentheses.vim'
call plug#end()

" nvim settings
set nu
syntax enable
filetype plugin indent on

" rainbow_parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces

" colorschemes
colorscheme molokai

" vim-go
let g:go_fmt_command = 'goimports'
let g:go_autodetect_gopath = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>
augroup go
    autocmd!
    autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
augroup END

" vim-rust
let g:rustfmt_autosave = 1

" ale
let g:ale_set_highlights = 1
let g:ale_set_quickfix = 1
let g:ale_sign_error = '!'
let g:ale_sign_warning = '?'
let g:ale_statusline_format = ['x%d', '?%d', 'OK']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
nmap <Leader>d :ALEDetail<CR>
let g:ale_linters = {
		\ 'go': ['golint', 'go vet', 'go fmt'],
		\ }
" shortcut

nmap <C-s> :w<cr>
nmap <C-q> :q<cr>
nmap <C-e> :NERDTreeToggle<cr>
nmap <C-t> :Tagbar<cr> 
