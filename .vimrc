" File type, plugin detection  
filetype plugin indent on

" Encoding must be UTF-8 on all files for YCM to work 
set encoding=utf-8

" Set global indenting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround
set autoindent

" Set indenting for frontend development 
aug fullstack_ft_indenting
au!
au BufNewFile,BufRead *.js,*.html,*.css
            \ set tabstop=2 softtabstop=2 shiftwidth=2
aug end

" Set line size to be 80 and highlight column at line 80
" set textwidth=80
" set colorcolumn=81

" Disable turning off vim and defaulting to vi
set nocompatible

" Increase register buffer size
set viminfo='50,<1000,s1000,h

" Remap leader keys
let mapleader=','
let maplocalleader=';'

" Remap copy and paste registers
vnoremap <C-c> "+y
noremap <C-v> "+p

" Alternative way to get out of normal mode 
inoremap kj <Esc>
inoremap jk <Esc>

" vim-plug 
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim' " Status line at the bottom 

" http://colorswat.ch/vim/
Plug 'kaicataldo/material.vim' " Material collection of colorschemes

Plug 'godlygeek/tabular' " Markdown dependency
Plug 'sheerun/vim-polyglot' " Syntax highlighting for many languages 
Plug 'lervag/vimtex' " LaTeX suite 
Plug 'maxmellon/vim-jsx-pretty' " JSX syntax highlighting

" IMPORTANT: these require external dependencies to work  
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocompletion engine
Plug 'dense-analysis/ale' " Code linting, syntax checking
Plug 'Chiel92/vim-autoformat' " Proper auto-formatting
Plug 'majutsushi/tagbar' " Tagbar for viewing functions in file
Plug 'metakirby5/codi.vim'

Plug 'maximbaz/lightline-ale' " Lightline integration for linter 
Plug 'nathanaelkane/vim-indent-guides' " Add visual indent guides 
Plug 'tpope/vim-fugitive' " Git integration for vim
Plug 'airblade/vim-gitgutter' " Git marks in the gutter 
Plug 'kshenoy/vim-signature' " Vim marks in the gutter 
Plug 'jeffkreeftmeijer/vim-numbertoggle' " Hybrid mode for numbers

Plug 'kien/ctrlp.vim' " File search engine 
Plug 'wincent/terminus' " Enable mouse, change cursor mode, etc. 
Plug 'tpope/vim-surround' " Mappings to edit parentheses, brackets, etc.
Plug 'tpope/vim-commentary' " Fast commenting
Plug 'justinmk/vim-sneak' " Fast file jumping
Plug 'dietsche/vim-lastplace' " Saves last edit line for a file

Plug 'preservim/nerdtree' " Tree Plugin

Plug 'ryanoasis/vim-devicons' " Add file type icons

Plug 'jupyter-vim/jupyter-vim' " Jupyter and Vim integration

Plug 'mileszs/ack.vim'

Plug 'tmhedberg/SimpylFold'

Plug 'lambdalisue/suda.vim'

Plug 'turbio/bracey.vim'

call plug#end()

" Enable syntax highlighting and use colorscheme
set background=dark
set termguicolors
syntax enable
let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean'
colorscheme material

" Enable lightline status and use colorscheme
set laststatus=2
let g:lightline = { 'colorscheme': 'material_vim', }
let g:lightline.tabline = {
\   'left': [ ['tabs'] ],
\   'right': [ ['close'] ]
\ }
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline

" Extend lightline to integrate with ALE
let g:lightline.component_expand = {
    \  'linter_checking': 'lightline#ale#checking',
    \  'linter_warnings': 'lightline#ale#warnings',
    \  'linter_errors': 'lightline#ale#errors',
    \  'linter_ok': 'lightline#ale#ok',
    \ }
let g:lightline.component_type = {
    \     'linter_checking': 'left',
    \     'linter_warnings': 'warning',
    \     'linter_errors': 'error',
    \     'linter_ok': 'left',
    \ }
let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]] }

" Disable unnecessary language highlighting
let g:polyglot_disabled = ['jsx', 'latex']

" C++ highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error = 1

" Python highlighting
let python_highlight_all = 1

" Markdown highlighting 
let g:vim_markdown_json_frontmatter = 1

" GraphQL highlighting
let g:graphql_javascript_tags = ["gql", "graphql", "Relay.QL"]

" i3config highlighting
aug i3config_ft_detection
au!
au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

" Disable default vim indenting
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
nmap <Leader>f :Autoformat<CR>

" Autocompletion options 
" let g:ycm_use_clangd = 0
let g:ycm_autoclose_preview_window_after_completion = 1 
let g:ycm_confirm_extra_conf = 0 
let g:ycm_disable_for_files_larger_than_kb = 5000
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<C-N>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<C-P>', '<Up>']

" Linting options
let g:ale_completion_enabled = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s'
let g:ale_lint_delay = 1500

" Indent guide settings
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Open tagbar easily 
nmap <Leader>t :TagbarToggle<CR>

" Sneak labels which lines to we are looking at 
let g:sneak#label = 1

" Set file types to ignore for vim-lastplace
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"

" Set buffer types to ignore for vim-lastplace
let g:lastplace_ignore_buftype = "quickfix,nofile,help"

" Set vimtex to use my viewer and compiler of choice
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexrun'

" Enable hybrid mode for vim line numbres
set number relativenumber

" Bold current line number
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Set command for easier saving with suda
command! -nargs=0 Sw w suda://%

" Run python code
function! Termpy()
    exec winheight(0)/4."split" | terminal python3 %
endfunction

nnoremap <F9> :call Termpy() <CR>

filetype on
