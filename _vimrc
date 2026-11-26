" Vim with all enhancements
" source $VIMRUNTIME/vimrc_example.vim

" Language
" language en
let $LANG = "en"

" Others
set nocompatible
let g:mapleader=" "
" set autochdir
set autoread
set belloff=all
set confirm
set grepprg=rg\ --vimgrep\ --smart-case\ --no-heading
set hidden
set list
set listchars=tab:»\ ,trail:·
set mouse=a
set path+=**
set scrolloff=8
" set sidescrolloff=16
set splitbelow
set splitright
set nowrap
filetype plugin indent on
" set ttimeout
" set ttimeoutlen=100

" Appear
set background=dark
set termguicolors
" set t_Co=256
" colorscheme 256_noir
" colorscheme antiphoton
" colorscheme catppuccin
" let g:everforest_background="soft"
" let g:everforest_transparent_background=1
" colorscheme everforest
" colorscheme fogbell
" colorscheme fogbell_light
" let g:gruvbox_contrast_dark="soft"
" let g:gruvbox_transparent_bg=1
" colorscheme gruvbox
" colorscheme iceberg
" colorscheme lightning
" colorscheme lucius
" colorscheme lunaperche
" colorscheme mountaineer
" colorscheme mountaineer-grey
" colorscheme mountaineer-light
colorscheme naysayer
" colorscheme nighted
" colorscheme nord
" colorscheme paramount
" colorscheme photon
" colorscheme seoul256
" colorscheme seoul256-light
" colorscheme tokyonight
" colorscheme wildcharm
" colorscheme zaibatsu
syntax on
set cmdheight=1
set cursorline
set cursorcolumn
" let g:netrw_altv=1
let g:netrw_banner=0
" let g:netrw_browse_split=4
" let g:netrw_keepdir=0
let g:netrw_liststyle=1
let g:netrw_list_hide='\(^\|\s\s\)\zs\.\S\+'
" let g:netrw_localcopydircmd='cp -r'
" let g:netrw_winsize = 20
set laststatus=2
" set number
" set relativenumber
set ruler
set showcmd
set noshowmode
set showtabline=1
set title
" autocmd vimenter * hi CursorColumn ctermbg=NONE guibg=NONE
" autocmd vimenter * hi CursorLine ctermbg=NONE guibg=NONE
" autocmd vimenter * hi EndOfBuffer ctermbg=NONE guibg=NONE
" autocmd vimenter * hi NonText ctermbg=NONE guibg=NONE
" autocmd vimenter * hi Normal ctermbg=NONE guibg=NONE
" autocmd vimenter * hi StatusLine ctermbg=NONE guibg=NONE
" autocmd vimenter * hi StatusLineNC ctermbg=NONE guibg=NONE
" autocmd vimenter * hi Tabline ctermbg=NONE guibg=NONE
" autocmd vimenter * hi TablineFill ctermbg=NONE guibg=NONE
" autocmd vimenter * hi TablineSel ctermbg=NONE guibg=NONE
" highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
" autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
" autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212

" Edit
set clipboard=unnamed,unnamedplus
set complete=.,w,b,o
" set completeopt=menuone,preview,noinsert
" set completeopt=menuone,preview,noselect
set completeopt=menuone,preview
set foldmethod=syntax
autocmd FileType * setlocal formatoptions-=r formatoptions-=o
" set matchpairs+=<:>
set nobackup
set noswapfile
set undofile
set undodir=~/.vim/.undo// 
set shortmess+=c
set showmatch
set virtualedit=block
set whichwrap+=[,]
set wildmenu
set wildoptions=pum

if has("autocmd") && exists("+omnifunc")
autocmd Filetype *
        \    if &omnifunc == "" |
        \        setlocal omnifunc=syntaxcomplete#Complete |
        \    endif
endif

" Gui
if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    set guifont=Maple\ Mono\ Normal\ NF\ CN:h16
endif

" Search
set incsearch
set ignorecase
set smartcase

" Tab
set autoindent
set cindent
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4
set tabstop=4

" For Verilog
au BufRead,BufNewFile *.sv set filetype=systemverilog
au BufRead,BufNewFile *.v  set filetype=verilog
let b:verilog_indent_modules = 1
" au BufReadPost * if exists("b:current_syntax")
" au BufReadPost *   if b:current_syntax == "verilog"
" au BufReadPost *     let b:verilog_indent_modules = 1
" au BufReadPost *   endif
" au BufReadPost * endif


" Keymaps
" Change reg
nnoremap <leader>cr  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>

" Explore
"nnoremap <silent><Leader>ow :Explore .<CR>
" nnoremap <silent><leader>oc :Explore %:p:h<CR>
nnoremap <silent><Leader>e :Explore<CR>
"nnoremap <silent><Leader>or :Rexplore<CR>

" Find
nnoremap <Leader>f :find<space>
nnoremap <Leader>g :vimgrep<space>
" nnoremap <Leader>fg :grep<space>

" Lazygit
"nnoremap <silent><leader>lg :tabe<CR>:call term_start("lazygit", {"curwin": 1, "term_finish": "close"})<CR>

" Quickfix
nnoremap <silent><Leader>qf :copen<CR>
nnoremap <silent><Leader>pc :cprev<CR>
nnoremap <silent><Leader>nc :cnext<CR>

" nnoremap <silent><C-h> :tabp<CR>
" nnoremap <silent><C-l> :tabn<CR>
nnoremap <silent><C-h> :bp<CR>
nnoremap <silent><C-j> J
nnoremap <silent><C-k> K
nnoremap <silent><C-l> :bn<CR>
nnoremap <silent><nowait><C-w> :bd<CR>
"nnoremap <silent><Leader>to :tabo<CR>
nnoremap <Leader>b :buffers<CR>:b<space>
"nnoremap <Leader>bc :buffers<CR>:bd<space>

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <silent><A--> :split<CR>
nnoremap <silent><A-\> :vsplit<CR>
nnoremap <silent><A-w> :close<CR>
nnoremap <silent><A-o> :only<CR>
nnoremap <silent><A-Up> :resize +2<CR>
nnoremap <silent><A-Down> :resize -2<CR>
nnoremap <silent><A-Left> :vertical resize -2<CR>
nnoremap <silent><A-Right> :vertical resize +2<CR>

nnoremap x "_x
nnoremap s "_s
nnoremap <A-d> "_d
nnoremap <A-c> "_c
nnoremap <A-x> i<space><Esc>
nnoremap Y y$
nnoremap H ^
nnoremap J 4j
nnoremap K 4k
nnoremap L $


inoremap jk <Esc>

inoremap <A-h> <C-\><C-n><C-w>hi
inoremap <A-j> <C-\><C-n><C-w>ji
inoremap <A-k> <C-\><C-n><C-w>ki
inoremap <A-l> <C-\><C-n><C-w>li
inoremap <silent><A--> <C-\><C-n>:split<CR>i
inoremap <silent><A-\> <C-\><C-n>:vsplit<CR>i
inoremap <silent><A-w> <C-\><C-n>:close<CR>i
inoremap <silent><A-o> <C-\><C-n>:only<CR>i
inoremap <silent><A-Up> <C-\><C-n>:resize +2<CR>i
inoremap <silent><A-Down> <C-\><C-n>:resize -2<CR>i
inoremap <silent><A-Left> <C-\><C-n>:vertical resize -2<CR>i
inoremap <silent><A-Right> <C-\><C-n>:vertical resize +2<CR>i

inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>


xnoremap <C-j> :m '>+1<CR>gv=gv
xnoremap <C-k> :m '<-2<CR>gv=gv
xnoremap < <gv
xnoremap > >gv
xnoremap H ^
xnoremap J 4j
xnoremap K 4k
xnoremap L $


cnoremap <C-n> <down>
cnoremap <C-p> <up>

cnoremap <C-h> <left>
cnoremap <C-l> <right>
cnoremap <C-b> <S-left>
cnoremap <C-w> <S-right>
cnoremap <C-a> <home>
cnoremap <C-e> <end>

tnoremap <silent><C-h> <C-\><C-n>:bp<CR>i
tnoremap <silent><C-l> <C-\><C-n>:bn<CR>i
tnoremap <A-h> <C-\><C-n><C-w>hi
tnoremap <A-j> <C-\><C-n><C-w>ji
tnoremap <A-k> <C-\><C-n><C-w>ki
tnoremap <A-l> <C-\><C-n><C-w>li
tnoremap <silent><A--> <C-\><C-n>:split<CR>i
tnoremap <silent><A-\> <C-\><C-n>:vsplit<CR>i
tnoremap <silent><A-w> <C-\><C-n>:close<CR>i
tnoremap <silent><A-o> <C-\><C-n>:only<CR>i
tnoremap <silent><A-Up> <C-\><C-n>:resize +2<CR>i
tnoremap <silent><A-Down> <C-\><C-n>:resize -2<CR>i
tnoremap <silent><A-Left> <C-\><C-n>:vertical resize -2<CR>i
tnoremap <silent><A-Right> <C-\><C-n>:vertical resize +2<CR>i

tnoremap <Esc> <C-\><C-n>


onoremap H ^
onoremap J 4j
onoremap K 4k
onoremap L $


" iabbrev
iab xdate <C-r>=strftime("%d/%m/%y %H:%M:%S")<CR>


" Autocmd
" augroup ReadPost
    " au!
    " autocmd QuickFixCmdPost * copen
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | execute "normal! zz" | endif "自动定位上次编辑位置
    " autocmd BufDelete * if expand('%:p')!=''&& &bt==""|let g:map_recent_close[expand('%:p')] =
        " \{'lnum':line('.'),'col':col('.'),'text':'close at '.strftime("%H:%M"),'time':localtime()}
        " \|endif
" augroup END

augroup FiletypeSettings
    autocmd!
    " autocmd FileType text setlocal spell wrap textwidth=80
    autocmd FileType text setlocal wrap textwidth=80
    autocmd FileType text nnoremap <buffer> j gj
    autocmd FileType text nnoremap <buffer> k gk
    autocmd FileType text nnoremap <buffer> 0 g0
    autocmd FileType text nnoremap <buffer> H g^
    autocmd FileType text nnoremap <buffer> J 4gj
    autocmd FileType text nnoremap <buffer> K 4gk
    autocmd FileType text nnoremap <buffer> L g$
    autocmd FileType text xnoremap <buffer> j gj
    autocmd FileType text xnoremap <buffer> k gk
    autocmd FileType text xnoremap <buffer> 0 g0
    autocmd FileType text xnoremap <buffer> H g^
    autocmd FileType text xnoremap <buffer> J 4gj
    autocmd FileType text xnoremap <buffer> K 4gk
    autocmd FileType text xnoremap <buffer> L g$
    autocmd FileType text onoremap <buffer> j gj
    autocmd FileType text onoremap <buffer> k gk
    autocmd FileType text onoremap <buffer> 0 g0
    autocmd FileType text onoremap <buffer> H g^
    autocmd FileType text onoremap <buffer> J 4gj
    autocmd FileType text onoremap <buffer> K 4gk
    autocmd FileType text onoremap <buffer> L g$
    autocmd FileType markdown setlocal spell wrap linebreak
    autocmd FileType markdown nnoremap <buffer> j gj
    autocmd FileType markdown nnoremap <buffer> k gk
    autocmd FileType markdown nnoremap <buffer> 0 g0
    autocmd FileType markdown nnoremap <buffer> H g^
    autocmd FileType markdown nnoremap <buffer> J 4gj
    autocmd FileType markdown nnoremap <buffer> K 4gk
    autocmd FileType markdown nnoremap <buffer> L g$
    autocmd FileType markdown xnoremap <buffer> j gj
    autocmd FileType markdown xnoremap <buffer> k gk
    autocmd FileType markdown xnoremap <buffer> 0 g0
    autocmd FileType markdown xnoremap <buffer> H g^
    autocmd FileType markdown xnoremap <buffer> J 4gj
    autocmd FileType markdown xnoremap <buffer> K 4gk
    autocmd FileType markdown xnoremap <buffer> L g$
    autocmd FileType markdown onoremap <buffer> j gj
    autocmd FileType markdown onoremap <buffer> k gk
    autocmd FileType markdown onoremap <buffer> 0 g0
    autocmd FileType markdown onoremap <buffer> H g^
    autocmd FileType markdown onoremap <buffer> J 4gj
    autocmd FileType markdown onoremap <buffer> K 4gk
    autocmd FileType markdown onoremap <buffer> L g$
augroup END


" Plugins
" Autopairs
" set pair baket
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
" inoremap < <><left>
" cnoremap ( ()<left>
" cnoremap [ []<left>
" cnoremap { {}<left>
" cnoremap < <><left>


" Auto pop complete menu
" inoremap <silent><expr>/ complete_info(["selected"])["selected"]!=-1&&getline(line('.'))[col('.')-2]=='/'?
            " \ "\<bs>/\<c-x>\<c-f>":
            " \ "/\<c-x>\<c-f>"
" let g:cmpX=-1|let g:cmpY=-1
" function! s:feed_popup()
    " if getline('.')[col('.')-1]=='/'|return|endif
    " let x = col('.') - 1|let y = line('.') - 1
    " if g:cmpX==x&&g:cmpY==y|return|endif
    " let s:min_complete=2
    " let s:context=strpart(getline('.'), 0, col('.') - 1)
    " let s:match= matchlist(s:context, '\(\k\{' . s:min_complete . ',}\)$')
    " if empty(s:match)|return|endif
    " silent! call feedkeys("\<c-n>", 'n')
    " let g:cmpX=x|let g:cmpY=y
    " return
" endfunction
" augroup Complete
    " au!
    " au CursorMovedI * nested call s:feed_popup()
    " au FileType text setlocal spell|setlocal nospell
" augroup END


" Gcc for comment
func! s:Commentary(line) abort
    let s:num=a:line
    let line=getline(s:num)
    let uncomment=2
    let [l, r] = split( substitute(substitute(substitute(
                \ &commentstring, '^$', '%s', ''), '\S\zs%s',' %s', '') ,'%s\ze\S', '%s ', ''), '%s', 1)
    let line = matchstr(getline(s:num),'\S.*\s\@<!')
    if l[-1:] ==# ' ' && stridx(line,l) == -1 && stridx(line,l[0:-2]) == 0|let l = l[:-2]|endif
    if r[0] ==# ' ' && line[-strlen(r):] != r && line[1-strlen(r):] == r[1:]|let r = r[1:]|endif
    if len(line) && (stridx(line,l) || line[strlen(line)-strlen(r) : -1] != r)|let uncomment = 0|endif
    let line=getline(s:num)
    let [l, r] = split( substitute(substitute(substitute(
                \ &commentstring, '^$', '%s', ''), '\S\zs%s',' %s', '') ,'%s\ze\S', '%s ', ''), '%s', 1)
    if strlen(r) > 2 && l.r !~# '\\'
        let line = substitute(line,
                    \'\M' . substitute(l, '\ze\S\s*$', '\\zs\\d\\*\\ze', '') . '\|' . substitute(r, '\S\zs', '\\zs\\d\\*\\ze', ''),
                    \'\=substitute(submatch(0)+1-uncomment,"^0$\\|^-\\d*$","","")','g')
    endif
    if uncomment
        let line = substitute(line,'\S.*\s\@<!','\=submatch(0)[strlen(l):-strlen(r)-1]','')
    else
        let line = substitute(line,'^\%('.matchstr(getline(s:num),'^\s*').'\|\s*\)\zs.*\S\@<=','\=l.submatch(0).r','')
    endif
    call setline(s:num,line)
endfunc
" visual gcc
func! s:VisualComment() abort
    for temp in range(min([line('.'),line('v')]),max([line('.'),line('v')]))
        call s:Commentary(temp)
    endfor
endfunc
nnoremap <silent><nowait>gcc :call <sid>Commentary(line('.'))<cr>
xnoremap <silent><nowait>gc  :call <sid>VisualComment()<cr>


" Netrw
function! NetrwMapping()
    nmap <buffer> H u
    nmap <buffer> h -
    nmap <buffer> l <CR>
    nmap <nowait><silent><buffer> q :bp<CR>
    " nmap <buffer> . gh

    " nmap <buffer> <TAB> mf
    " nmap <buffer> <S-TAB> mF
    " nmap <buffer> a d
    " nmap <buffer> r R
    " nmap <buffer> c mtmc
    " nmap <buffer> x mtmm
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END


" Statusline
let g:status_git_branch=""
func! GitBranchShow(chan,msg)
    let g:status_git_branch=" ".a:msg." "
endfunc
if g:status_git_branch==""
    call job_start("git rev-parse --abbrev-ref HEAD",{"out_cb":"GitBranchShow"})
endif

" set statusline=%1*\ %{g:status_git_branch}
" set statusline+=%2*\ %t\ 
" set statusline+=%2*\ %t\ 
" set statusline+=%3*
" set statusline+=%3*
" set statusline+=%4*\ %y
" set statusline+=%m
" set statusline+=%r
" set statusline+=%h
" set statusline+=%w
" set statusline+=%=
" set statusline+=%P\ \ 
" set statusline+=%P\ \ 
" set statusline+=%1*\ %l-%c\ 

" Without color version
" set statusline=\ %{g:status_git_branch}
" set statusline+=\ %t\ 
set statusline=\ %t\ 
set statusline+=\ %y
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=%=
set statusline+=%P\ \ 
set statusline+=\ %l-%c\ 

" default
" highlight User1 guifg=black guibg=white
" highlight User2 guifg=white guibg=grey
" highlight User3 guifg=grey guibg=black
" highlight User4 guifg=white guibg=black

" everforest
" highlight User1 guifg=#232a2e guibg=#a7c080
" highlight User2 guifg=#a7c080 guibg=#48584e
" highlight User3 guifg=#48584e guibg=#3c4841
" highlight User4 guifg=#a7c080 guibg=#3c4841

" gruvbox
" highlight User1 guifg=#3c3836 guibg=#fbf1c7
" highlight User2 guifg=#fbf1c7 guibg=#928374
" highlight User3 guifg=#928374 guibg=#504945
" highlight User4 guifg=#fbf1c7 guibg=#504945

" iceberg
" highlight User1 guifg=#161821 guibg=#818596
" highlight User2 guifg=#818596 guibg=#2a3158
" highlight User3 guifg=#2a3158 guibg=#1e2132
" highlight User4 guifg=#818596 guibg=#1e2132

" nord
" highlight User1 guifg=#2e3440 guibg=#d8dee9
" highlight User2 guifg=#d8dee9 guibg=#5e81ac
" highlight User3 guifg=#5e81ac guibg=#4c566a
" highlight User4 guifg=#d8dee9 guibg=#4c566a


call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ap/vim-buftabline'
call plug#end()


" fzf
let g:fzf_vim = {}
let g:fzf_vim.preview_window = ['hidden,right,50%,<50(up,40%)', 'ctrl-/']


" vim-bufabline
" let g:buftabline_indicators = 1
" let g:buftabline_separators = 1

nnoremap <Leader>f :Files<CR>
nnoremap <Leader>g :Rg<CR>
nnoremap <Leader>b :Buffers<CR>

