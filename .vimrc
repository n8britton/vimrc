".vimrc required
set nocompatible
set t_Co=256
filetype off
syntax on

"
" Begin vim-plug
"
call plug#begin('~/.vim/plugged')

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/webapi-vim'
Plug 'Wildog/airline-weather.vim'

" vim-easymotion Plug. Default leader is <leader><leader>
Plug 'Lokaltog/vim-easymotion'

" unite.vim Plug
Plug 'Shougo/unite.vim'

" vim-git bundle
Plug 'tpope/vim-git'

" git-gutter-vim bundle
Plug 'akiomik/git-gutter-vim'

" Fugitive bundle
Plug 'tpope/vim-fugitive'

" NERDTree bundle
Plug 'scrooloose/nerdtree'

" python-mode bundle
Plug 'klen/python-mode'

" Syntastic bundle
Plug 'scrooloose/syntastic'

" Ultisnips bundle
Plug 'SirVer/ultisnips'
" Snipmate bundles
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

"vim-pyunit bundle Default keys are <F8> for nosetests on current file,
"<F9> for switching between test file and corresponding source file
"shift+<F8> for nosetests on all test files under the project
"Requires nose, nose_machineout, vim_bridge, mock modules
"installed using pip/pip3
Plug 'nvie/vim-pyunit'

"vim-perl bundle
Plug 'vim-perl/vim-perl'

"vim-ruby bundle
Plug 'vim-ruby/vim-ruby'

"endwise bundle for Ruby
Plug 'tpope/vim-endwise'

"vim-ruby-refactoring bundle
Plug 'ecomba/vim-ruby-refactoring'

"vim-chef bundle
Plug 'dougireton/vim-chef'

"vim-cucumber bundle
Plug 'tpope/vim-cucumber'

"vimerl Erlang bundle
Plug 'jimenezrick/vimerl'

"vim-elixir bundle
Plug 'elixir-lang/vim-elixir'

"elixir-snippets bundle
Plug 'carlosgaldino/elixir-snippets'

"elixir mix(build tool) bundle
Plug 'mattonrails/vim-mix'

"vim-classpath bundle
Plug 'tpope/vim-classpath'

"vim-salve bundle(for leiningen/boot)
Plug 'tpope/vim-salve'

"vim-dispatch bundle
Plug 'tpope/vim-dispatch'

"vim repeat bundle
Plug 'tpope/vim-repeat'
"vim sexp mappings bundle
Plug 'tpope/vim-sexp-mappings-for-regular-people'
" vim tmux navigator bundle
Plug 'christoomey/vim-tmux-navigator'

"Dtrace bundle
Plug 'vim-scripts/dtrace-syntax-file'

"Node.js bundle
Plug 'moll/vim-node'
Plug 'guileen/vim-node-dict'
Plug 'hallettj/jslint.vim'
Plug 'jamescarr/snipmate-nodejs'
Plug 'ahayman/vim-nodejs-complete'

"AngularJS bundle
Plug 'burnettk/vim-angular'
Plug 'matthewsimo/angular-vim-snippets'
Plug 'claco/jasmine.vim'


"JavaScript bundle
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'


"CoffeeScript bundle
Plug 'kchmck/vim-coffee-script'

"Tabular bundle
Plug 'godlygeek/tabular'

"vim-jade bundle
Plug 'digitaltoad/vim-jade'

"stylus bundle
Plug 'wavded/vim-stylus'

"Mustache bundle
Plug 'mustache/vim-mustache-handlebars'

"surround bundle
Plug 'tpope/vim-surround'

"nerdcommenter bundle
Plug 'scrooloose/nerdcommenter'

"Vim plugin for Ack(Better Grep)
Plug 'mileszs/ack.vim'

"Vim plugin for IPython(vim-ipython integration with Ctrl + s
Plug 'ivanov/vim-ipython'

"Vim plugin for go
Plug 'fatih/vim-go'

"Vim plugin for Julia
Plug 'JuliaLang/julia-vim'

"Vim plugin for tagbar
Plug 'majutsushi/tagbar'

"Vim plugin for groovy
Plug 'tfnico/vim-gradle'

"Vim plugin for Rspec
Plug 'thoughtbot/vim-rspec'

"Vim plugin for tslime
Plug 'jgdavey/tslime.vim'

"Nginx plugin
Plug 'nginx/nginx'

"JSON
Plug 'elzr/vim-json'

"Molokai theme
Plug 'tomasr/molokai'

" Install YCM
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

" Install Tern
function! BuildTern(info)
  if a:info.status == 'installed' || a:info.force
    !npm install
  endif
endfunction
Plug 'marijnh/tern_for_vim', { 'do': function('BuildTern') }

" Install Solarized Color
function! BuildSolarized(info)
    if a:info.status == 'installed; || a.info.force
        !ln -s ~/.vim/plugged/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim
    endif
endfunction
Plug 'altercation/vim-colors-solarized', { 'do': function('BuildSolarized') }

" Install syntastic
function! Installjshint(info)
  if a:info.status == 'installed' || a:info.force
    !npm install -g jshint
  endif
endfunction
Plug 'scrooloose/syntastic', { 'do': function('Installjshint') }

"End vim-plug
call plug#end()

""""""""""""""""""""
" Rest of the config
""""""""""""""""""""

"
" Settings
"
set noerrorbells                " No beeps
set regexpengine=1
"set number                      " Show line numbers
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.

set noswapfile                  " Don't use swapfile
set nobackup				    " Don't create annoying backup files
set nowritebackup
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=utf-8              " Set default encoding to UTF-8
set autowrite                   " Automatically save before :next, :make etc.
set autoread                    " Automatically reread changed files without asking me anything
set laststatus=2                " Alwasys show the status line
set hidden

set ruler                       " Show the cursor position all the time
au FocusLost * :wa              " Set vim to save the file on focus out.

set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats

set noshowmatch                 " Do not show matching brackets by flickering
set noshowmode                  " We show the mode with airline or lightline
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
set ttyfast
set lazyredraw          	      " Wait to redraw "

set autochdir " automatically change window's cwd to file's dir

" speed up syntax highlighting
set nocursorcolumn
set nocursorline

syntax sync minlines=256
set synmaxcol=300
set re=1

" do not hide markdown
set conceallevel=0

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L

" Make Vim to handle long lines nicely.
set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=79
"set relativenumber
"set norelativenumber

set cmdheight=2     " Height of the command bar
set magic           " magic for regex
set mat=2           "How many tenths of a second to blink when matching brackets

set autoindent
set complete-=i
set showmatch
set smarttab
set et
set tabstop=4
set shiftwidth=4
set expandtab
set nrformats-=octal
set shiftround
set notimeout
set ttimeout
set ttimeoutlen=10
set complete=.,w,b,u,t
set completeopt=longest,menuone

if has('mouse')
  set mouse=a
endif

" If linux then set ttymouse
let s:uname = system("echo -n \"$(uname)\"")
if !v:shell_error && s:uname == "Linux" && !has('nvim')
  set ttymouse=xterm
endif

" load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Colors and themes
set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
colorscheme material-monokai
let g:rehash256 = 1


" maps
" Move up and down on splitted lines (on small width screens)
map <Up> gk
map <Down> gj
map k gk
map j gj

" Do not show stupid q: window
map q: :q

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" never do this again --> :set paste <ctrl-v> :set no paste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

" -----------------------------------------
" Plugin configs 			    			
" -----------------------------------------

" ==================== CtrlP ====================
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_height = 10		" maxiumum height of match window
let g:ctrlp_switch_buffer = 'et'	" jump to a file if it's open already
let g:ctrlp_mruf_max=450 		" number of recently opened files
let g:ctrlp_max_files=0  		" do not limit the number of searchable files
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'

let g:ctrlp_buftag_types = {'go' : '--language-force=go --golang-types=ftv'}

func! MyCtrlPTag()
  let g:ctrlp_prompt_mappings = {
        \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
        \ 'AcceptSelection("t")': ['<c-t>'],
        \ }
  CtrlPBufTag
endfunc
command! MyCtrlPTag call MyCtrlPTag()

nmap <C-g> :MyCtrlPTag<cr>
imap <C-g> <esc>:MyCtrlPTag<cr>

nmap <C-b> :CtrlPCurWD<cr>
imap <C-b> <esc>:CtrlPCurWD<cr>

" ==================== Fugitive ====================
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
vnoremap <leader>gb :Gblame<CR>

" ==================== Vim-go ====================
let g:go_fmt_fail_silently = 0
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_term_enabled = 1
let g:go_snippet_engine = "neosnippet"
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 0
let g:go_highlight_operators = 0
let g:go_highlight_build_constraints = 1

"==================== NerdTree ====================
" For toggling
nmap <C-n> :NERDTreeToggle<CR>
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeShowHidden=1

let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

" Close nerdtree and vim on close file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ==================== vim-json ====================
let g:vim_json_syntax_conceal = 0

" =================== vim-airline ========================

let g:airline_theme='materialmonokai'
let g:airline#extensions#tabline#enabled = 1
let g:weather#area = 'newyorkcity,us'
let g:weather#unit = 'metric'
let g:weather#appid = '2de143494c0b295cca9337e1e96b00e0'
let g:weather#cache_file = '~/.cache/.weather'
let g:weather#cache_ttl = '600'
let g:weather#format = '%s %.0f'
let g:weather#status_map = {
  \ "01d": "☀",
  \ "02d": "☁",
  \ "03d": "☁",
  \ "04d": "☁",
  \ "09d": "☂",
  \ "10d": "☂",
  \ "11d": "☈",
  \ "13d": "❅",
  \ "50d": "≡",
  \ "01n": "☽",
  \ "02n": "☁",
  \ "03n": "☁",
  \ "04n": "☁",
  \ "09n": "☂",
  \ "10n": "☂",
  \ "11n": "☈",
  \ "13n": "❅",
  \ "50n": "≡",
  \}

" set to use powerline fonts when not in a ssh session
let g:remoteSession = ($STY == "")
if !g:remoteSession
  let g:airline_powerline_fonts=1
endif

" ====== YouCompleteMe Setup ==========================
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" YouCompleteMe Setup : <C-Tab> to <Down> and <C-S-Tab> to <Up>
" So that snippets work with <Tab>
"let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']
let g:ycm_key_list_previous_completion = ['<Up>']

" ====== Ultisnips Setup ====================
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"

" ====== Syntastic Setup ====================
let g:syntastic_always_populate_loc_list=1
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_eruby_checkers = ['mri', 'rubocop']
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" ====== Dtrace Setup ====================
autocmd BufNewFile,BufRead *.d setf dtrace

" ====== Node.js setup ====================
autocmd User Node
  \ if &filetype == "javascript" |
  \   setlocal expandtab |
  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
  \ endif
au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict

" ====== Vim Javascript indentation via esformatter Setup ====================
nnoremap <silent> <leader>e :call JSFormat()<cr>
 
" ====== vim-nodejs-complete Setup ====================
let g:nodejs_complete_config = {
\  'js_compl_fn': 'jscomplete#CompleteJS',
\  'max_node_compl_len': 15
\}
" ====== Set Chef FileType ====================
autocmd BufNewFile,BufRead */cookbooks/*/\(attributes\|definitions\|libraries\|providers\|recipes\|resources\)/*.rb set filetype=ruby.chef
autocmd BufNewFile,BufRead */cookbooks/*/templates/*/*.erb set filetype=eruby.chef
autocmd BufNewFile,BufRead */cookbooks/*/metadata.rb set filetype=ruby.chef
autocmd BufNewFile,BufRead */chef-repo/environments/*.rb set filetype=ruby.chef
autocmd BufNewFile,BufRead */chef-repo/roles/*.rb set filetype=ruby.chef

" ====== Javascript Config ====================
au FileType javascript call JavaScriptFold()
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"

" ====== Tmux navigator config ====================
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>
let g:tmux_navigator_save_on_switch = 1

" ====== tsline config ====================
let g:tslime_always_current_session = 1 
let g:tslime_always_current_window = 1
vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

" ====== vim-RSpec config ====================
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" ====== salve config ====================
let g:salve_auto_start_repl = 1

" ====== python-mode config ===================
let g:pymode_rope = 0
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
" Support virtualenv
let g:pymode_virtualenv = 1
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Don't autofold code
let g:pymode_folding = 0
" Other python-specific settings
nmap l :set list! " Use l to toggle display of whitespace
set listchars=tab:»\ ,eol:¬,trail:~,extends:>,precedes:< " And set some nice chars to do it with
set omnifunc=syntaxcomplete#Complete
autocmd FileType python setlocal omnifunc=python3complete#Complete



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
        en
        return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")
    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif
    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

"Highlight excess line length
"Anything that exceeds line length is highlighted with black
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 80
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
augroup END



