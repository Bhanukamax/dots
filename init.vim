"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc
"g:python_host_prog
"g:python3_host_prog = "/usr/bin/python3"
call plug#begin('~/.vim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'luochen1990/rainbow'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'mxw/vim-jsx'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'jlanzarotta/bufexplorer'
Plug 'yazug/vim-taglist-plus'
Plug 'tpope/vim-fugitive'
Plug 'burner/vim-svelte'
Plug 'posva/vim-vue'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-session'
Plug 'google/vim-maktaba'
Plug 'google/vim-codereview'
Plug 'tomasiser/vim-code-dark'
Plug 'ayu-theme/ayu-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}


let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-css', 'coc-tslint', 'coc-eslint', 'coc-prettier', 'coc-vetur']


call plug#end()

:so ~/.vim/autoload/taglist-plus.vim
:so ~/.vim/autoload/bmax.vim


let g:rainbow_active = 1

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist'

let mapleader = ","


" Air Line
let g:airline_powerline_fonts = 1
set guifont=Meslo\ LG\ M\ Bold\ for\ Powerline:h20

"MY CONFIG

" split navigation with ctrl+arrow keys
"
" Prettier
nnoremap <leader>py  :CocCommand prettier.formatFile<CR>



" VIMRC edding test
nnoremap <leader>vs :source  ~/.config/nvim/init.vim<CR>
nnoremap <leader>ve :e ~/.config/nvim/init.vim<CR>
let g:vim_json_syntax_conceal = 0
"let g:ale_linters = {'javascript': ['eslint', 'flow']}

" insert mode special commands
inoremap jk <esc>
" return to normal mode from visual
vnoremap <leader>jk <esc>
" clipboard
:inoremap <C-v> <ESC>"+pa<ESC>
:vnoremap <C-c> "+y
:vnoremap <C-x> "+d

"noremap <C-t> :echo "You dont need tabs!!, type :tabe if you do"<CR>
noremap <F2> :tabp<CR>
noremap <F3> :tabn<CR>
" Buffer
set hidden
nnoremap <C-9> :bp<CR>
nnoremap <C-0> :bn<CR>
nnoremap <C-u> :bp<CR>
nnoremap <C-i> :bn<CR>
nnoremap <C-q> :bd<CR>
nnoremap <leader><leader> <c-^>

function! ListAndChooseFromBuffer()
	ls | let name = input("Enter buffer # ")
  execute"b"name
endfunction
nnoremap <leader>bl :call ListAndChooseFromBuffer()<CR>
"noremap <C-7> :vertical res -5<CR>
"noremap <C-8> :vertical res +5<CR>
nnoremap <space> viw

" move lines around
vnoremap <C-j> :move +1<CR>
vnoremap <C-k> :move -2<CR>
" super H and L
nnoremap H 0
nnoremap L $
vnoremap H 0
vnoremap L $

nnoremap \ dd

" split sizing
"nnoremap <c-F12> :vertical res +5
"
"Nerdtree
" Nerdtree
 map <leader>n :NERDTreeToggle<CR>

 " Splitting
" Vertical split
nnoremap <c-\> :vsp<CR>
" Horizontal split
nnoremap <leader>- :sp<CR>

noremap <leader>m :NERDTreeFind<CR>
noremap <leader>d <s-v>y<s-p>
noremap <leader>p :echo @%<CR>
let g:NERDTreeHijackNetrw=0

nmap <leader>f :Ag!<space>

" Status bar
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" autoclose
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php, *.js, *.tsx"
let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx'


" Indetation
let tabsize = 2
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
execute "set softtabstop=".tabsize


let g:python3_host_prog = '/usr/bin/python3'  " Python 3


set nu

set ignorecase


" Spellings
"set spell
"hi clear SpellBad
"hi SpellBad cterm=underline
"hi SpellBad gui=undercurl
"hi SpellBad ctermfg=red guifg=red

" Notes
" Get a macro = Ctrl r q
" move to begging and end of a paragraph {}
"
"


" Tmux navigation
"
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>"
"
"
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_cmd = 'CtrlP :pwd'

" Execute local .nvimrc
set exrc

nnoremap <leader>j :call CocAction('jumpDefinition')<cr>

"set ttymouse=xterm2
set mouse=a




function! BmaxPrint()
		let help  = "\" NERDTree (" . nerdtree#version() . ") quickhelp~\n"
		let help .= "\" :Bookmark [<name>]\n"
		let help .= "\" :BookmarkToRoot <name>\n"
		let help .= "\" :RevealBookmark <name>\n"
		let help .= "\" :OpenBookmark <name>\n"
		let help .= "\" :ClearBookmarks [<names>]\n"
		let help .= "\" :ClearAllBookmarks\n"
		let help .= "\" :ReadBookmarks\n"
		let help .= "\" :WriteBookmarks\n"
		let help .= "\" :EditBookmarks\n"
endfunction

function! ToggleSyntaxFold()
  if &foldmethod == 'syntax'
    echo 'set foldmethod to manual'
    set foldmethod=manual
    set foldcolumn=0
    try
      :normal zD
    catch /.*/
      echo "no folds found"
    endtry
  else
    echo 'set foldmethod to syntax'
    set foldmethod=syntax
    set foldcolumn=4
    :normal zR
  endif
endfunction

nnoremap <leader>s :call ToggleSyntaxFold()<CR>



function! Bmax()
	let _bff = bufnr("%")
	echo _bff
endfunction

" Netrw config
let g:netrw_banner = 0
let g:netrw_liststyle = 3



nnoremap <leader>b :call Bmax()<cr>

" Parcel build issue fix
set backupcopy=yes

" Run shell command and spit output
nnoremap Q !!$SHELL<CR>

" Show the register list
nnoremap <leader>r :reg<CR>

" Auto session management
fu! SaveSess()
    execute 'call mkdir(%:p:h/.vim)'
    execute 'mksession! %:p:h/.vim/session.vim'
endfunction

fu! RestoreSess()
execute 'so %:p:h/.vim/session.vim'
if bufexists(1)
    for l in range(1, bufnr('$'))
        if bufwinnr(l) == -1
            exec 'sbuffer ' . l
        endif
    endfor
endif
endfunction

autocmd VimLeave * call SaveSess()
"autocmd VimEnter * call RestoreSess()


" bmax buffer pluging
" TODO:
" read g:bmax_session from from local .nvimrc
" if g:bmax_session exits try to source it from
" ~/g:vim_session_source/g:bmax_session.vim
" on exit write session to ~/g:vim_session_source/g:bmax_session.vim
" todo


" Set file types
" autocmd BufWinEnter *nvimrc set ft=vim
" autocmd BufNewFile,BufRead *.nvimrc   set ft=vim
autocmd BufNewFile,BufRead *.tsx   set ft=typescript.tsx

autocmd BufEnter *.tsx   set ft=typescript.tsx
autocmd BufEnter *.vim   set ft=vim
autocmd BufEnter,BufRead *.nvimrc   set ft=vim
set expandtab



" -- EMMET  CONFIG --
"  redefine trigger key
"let g:user_emmet_leader_key=","
"let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
set colorcolumn=100
set t_Co=256
set t_ut=
":colorscheme codedark


"syntax match div '\/\/' conceal cchar=÷
"syntax match mul '*' conceal cchar=×
"syntax match eq '==' conceal cchar=≣
"syntax match neq '!=' conceal cchar=≠
"syntax match gteq '>=' conceal cchar=≥
"syntax match lteq '<=' conceal cchar=≤
syntax match pipe1 contained "%" conceal cchar=| containedin=pipe
syntax match pipe2 contained ">%" conceal cchar=> containedin=pipe
syntax match pipe "%>%" contains=pipe1,pipe2
syntax match neq1 contained "/" conceal cchar=! containedin=neq
syntax match neq "/=" contains=neq1


set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu
"let g:airline_theme = 'codedark'
" Color schems
"set termguicolors
"colorscheme molokai_dark
"
"colorscheme solarized8_light_high
"colorscheme lightning
"colorscheme lightcolors
colorscheme dracula
"


" IndentLine {{
let g:indentLine_char = '|'
let g:indentLine_first_char = '|'
let g:indentLine_showFirstIndentLevel = 1
"let g:indentLine_setColors = 0
" }}

function! EditRelativePath()

    :call feedkeys(':e ' . expand('%'))

endfunction

nnoremap <leader>e :call EditRelativePath()<CR>


function! SetTabSpacing()
    let  tabspace = input('type the tab size to set: ')
    echo "tab size set to " . tabspace
"let tabsize = 2
    execute "set tabstop=".tabspace
    execute "set shiftwidth=".tabspace
    execute "set softtabstop=".tabspace

endfunction


function! AddNewDates()
  f"df"inew Date(jkhlpj0w
endfunction
nnoremap <leader>t :call SetTabSpacing()<CR>



" Cursor color
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10
hi MatchParen guifg=LavenderBlush4
hi MatchParen guibg=white
"hi  guifg=red
"

" remove Extra whitespace before save
autocmd BufWritePre * %s/\s\+$//e
" prettier format before wirte
autocmd BufWritePre *.ts CocCommand prettier.formatFile
autocmd BufWritePre *.tsx CocCommand prettier.formatFile
autocmd BufWritePre *.js CocCommand prettier.formatFile
autocmd BufWritePre *.jsx CocCommand prettier.formatFile

nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>l

" Resize split
"nnoremap <c-n> :vertical resize -5<CR>
"nnoremap <c-m> :vertical resize +5<CR>

