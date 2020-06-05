" mkdir -p $VIMCONFIG/pack/minpac/opt
" cd $VIMCONFIG/pack/minpac/opt
" git clone https://github.com/k-takata/minpac.git

set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on

packadd minpac
call minpac#init()

" PLUGINS {{{
" Valloric/YouCompleteMe
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-surround')
call minpac#add('kana/vim-textobj-user')
call minpac#add('kana/vim-textobj-entire')
call minpac#add('kana/vim-textobj-line')
call minpac#add('gisraptor/vim-lilypond-integrator')
call minpac#add('ervandew/supertab')
call minpac#add('mhinz/vim-startify')
call minpac#add('itchyny/lightline.vim')
call minpac#add('easymotion/vim-easymotion')
call minpac#add('rhysd/vim-grammarous')
call minpac#add('beloglazov/vim-online-thesaurus')
call minpac#add('itchyny/calendar.vim')
call minpac#add('AndrewRadev/splitjoin.vim')
call minpac#add('junegunn/vim-easy-align')
call minpac#add('godlygeek/tabular')
call minpac#add('Yggdroot/indentLine')
call minpac#add('SirVer/ultisnips')
call minpac#add('dahu/LearnVim')
call minpac#add('junegunn/fzf')
call minpac#add('chrisbra/unicode.vim')

call minpac#add('marcus/vim-mustang')
call minpac#add('chriskempson/base16-vim')
call minpac#add('whatyouhide/vim-gotham')
call minpac#add('morhetz/gruvbox')
call minpac#add('altercation/vim-colors-solarized')
call minpac#add('romainl/flattened')
call minpac#add('jnurmine/Zenburn')

call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
call minpac#add('k-takata/minpac', {'type': 'opt'})
" }}}

" EDIT? {{{
set backspace=indent,eol,start"
set encoding=utf-8
set fileformats=unix,dos,mac
set hidden
set keymodel=startsel,stopsel
set nobackup
set noswapfile
set pastetoggle=<F2>
set history=700

set undolevels=1000
set undofile
set undoreload=10000
set undodir=~/.vim/undo

set gdefault
set hlsearch
set ignorecase
set incsearch
set smartcase

set infercase

set autoindent
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
set formatoptions=qrn1
set spelllang=en_gb
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set textwidth=79

nmap Y y$
runtime! macros/matchit.vim

" call tcomment#DefineType('cmusrc', '# %s')
"}}}

" OPTIONS "{{{
set completeopt=menu,longest
set cursorline
" set foldcolumn=1
set foldenable                  " enable folding
set foldlevelstart=0            " start out with everything folded
set foldmethod=manual
set foldtext=MyFoldText()
set laststatus=2
set linebreak
" set listchars=tab:>-,trail:·,eol:$,extends:#,nbsp:.,precedes:@
set listchars=tab:→\ ,trail:·,precedes:«,extends:»,eol:¶,nbsp:.
" set relativenumber
set ruler
set scrolloff=5
set showbreak=…
set showcmd
set showmatch
set showmode
set tabline=%!ShortTabLine()
set termencoding=utf-8
set ttyfast
set visualbell
set wildignore=*.swp,*.bak,*.pyc,*.mp3
set wildmenu
set wildmode=list:longest,full
set wrap

let g:Powerline_mode_n = ' N '
let g:Powerline_mode_i = ' I '
let g:Powerline_mode_R = ' R '
let g:Powerline_mode_v = ' V '
let g:Powerline_mode_V = ' V⋅LINE'
let g:Powerline_mode_cv = 'V⋅BLOCK'
let g:Powerline_mode_s = ' S '
let g:Powerline_mode_S = 'S⋅LINE'
let g:Powerline_mode_cs = 'S⋅BLOCK'
let g:pymode_lint = 0
"}}}

" FUNCTIONS "{{{
function! MyFoldText()"{{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - 4
    " return line . ' ¿' . repeat(" ",fillcharcount) . foldedlinecount . ' '
    return line . ' ' . repeat(" ",fillcharcount) . foldedlinecount . ' '
endfunction"}}}
function! ShortTabLine()"{{{
    let ret = ''
    for i in range(tabpagenr('$'))
        if i + 1 == tabpagenr()
            let ret .= '%#TabLineSel# '
        else
            let ret .= '%#TabLine# '
        endif
        " find the buffername for the tablabel
        let buflist = tabpagebuflist(i+1)
        let winnr = tabpagewinnr(i+1)
        let buffername = bufname(buflist[winnr - 1])
        let filename = fnamemodify(buffername,':t')
        " check if there is no name
        if filename == ''
            let filename = 'noname'
        endif

        let ret .=  filename .  ' %#TabDivider#|'
    endfor
    " after the last tab fill with TabLineFill and reset tab page #
    let ret .= '%#TabLineFill#%T'
    return ret
endfunction"}}}
" }}}

" COLOURS {{{
let NN="NONE""{{{
let bg0=232
let bg1=233
let bg2=234
let bg3=235
let bg4=236
let fg=247
let fg_dim=237
let fg_br=231
let green=113
let green_dim=58
let green_br=226
let red=160
let red_dim=124
let red_br=196
let orange=208
let orange_dim=94
let orange_br=214
let blue=33
let blue_dim=26
let blue_br=30
"}}}
" SCHEME {{{
let colourscheme = [
\ ["Comment",              fg_dim,      NN,         NN],
\ ["CursorLine",           NN,          bg2,        NN],
\ ["Directory",            NN,          NN,         NN],
\ ["FoldColumn",           fg_dim,      bg1,        NN],
\ ["Folded",               NN,          bg4,        NN],
\ ["Function",             fg_br,       NN,         NN],
\ ["Identifier",           NN,          NN,         NN],
\ ["IncSearch",            fg_dim,      orange_br,  NN],
\ ["LineNr",               fg_dim,      bg1,        NN],
\ ["MatchParen",           fg_br,       NN,         NN],
\ ["NonText",              fg_dim,      NN,         NN],
\ ["Normal",               fg,          bg0,        NN],
\ ["Number",               red_dim,     NN,         NN],
\ ["Pmenu",                fg,          bg2,        NN],
\ ["PmenuSel",             fg_br,       bg4,        NN],
\ ["PreProc"  ,            fg_br,       NN,         NN],
\ ["Search",               NN,          NN,         "reverse"],
\ ["Special",              orange_dim,  NN,         NN],
\ ["SpecialKey",           fg_dim,      NN,         NN],
\ ["SpellBad",             red_br,      NN,         "underline"],
\ ["SpellCap",             NN,          NN,         "underline"],
\ ["SpellLocal",           NN,          NN,         "underline"],
\ ["SpellRare",            NN,          NN,         "underline"],
\ ["Statement",            orange,      NN,         NN],
\ ["StorageClass",         NN,          NN,         NN],
\ ["String",               green,       NN,         NN],
\ ["TabDivider",          fg_dim,       bg0,        NN],
\ ["TabLine",              fg_dim,      bg0,         NN],
\ ["TabLineFill",          NN,          bg0,        NN],
\ ["TabLineSell",          fg_br,       bg0,        NN],
\ ["Title",                NN,          NN,         NN],
\ ["Todo",                 NN,          NN,         NN],
\ ["Type",                 NN,          NN,         NN],
\ ["Underlined",           NN,          NN,         NN],
\ ["VertSplit",            NN,          NN,         NN],
\ ["Visual",               NN,          bg3,        NN],
\ ["pythonStrFormatting",  green_br,    NN,         NN],
\ ]
"}}}
for i in colourscheme"{{{
    exe "hi ".i[0]." ctermfg=".i[1]." ctermbg=".i[2]." cterm=".i[3]
endfor
unlet i
"}}}
hi Comment ctermfg=237 ctermbg=NONE cterm=NONE
" }}}

" BEHAVIOUR {{{
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
au FocusLost * :wa
" }}}

" AUTOCOMMANDS {{{
if has("autocmd")
    augroup vim_files "{{{
        au!

        " Bind <F1> to show the keyword under cursor
        " general help can still be entered manually, with :h
        autocmd filetype vim noremap <buffer> <F1> <Esc>:help <C-r><C-w><CR>
        autocmd filetype vim noremap! <buffer> <F1> <Esc>:help <C-r><C-w><CR>
    augroup end "}}}

    augroup html_files "{{{
        au!

        " This function detects, based on HTML content, whether this is a
        " Django template, or a plain HTML file, and sets filetype accordingly
        fun! s:DetectHTMLVariant()
            let n = 1
            while n < 50 && n < line("$")
                " check for django
                if getline(n) =~ '{%\s*\(extends\|load\|block\|if\|for\|include\|trans\)\>'
                    set ft=htmldjango.html
                    return
                endif
                let n = n + 1
            endwhile
            " go with html
            set ft=html
        endfun

        autocmd BufNewFile,BufRead *.html,*.htm call s:DetectHTMLVariant()

        " Auto-closing of HTML/XML tags
        let g:closetag_default_xml=1
        autocmd filetype html,htmldjango let b:closetag_html_style=1
    augroup end " }}}

    augroup python_files "{{{
        au!

        " This function detects, based on Python content, whether this is a
        " Django file, which may enabling snippet completion for it
        fun! s:DetectPythonVariant()
            let n = 1
            while n < 50 && n < line("$")
                " check for django
                if getline(n) =~ 'import\s\+\<django\>' || getline(n) =~ 'from\s\+\<django\>\s\+import'
                    set ft=python.django
                    "set syntax=python
                    return
                endif
                let n = n + 1
            endwhile
            " go with html
            set ft=python
        endfun
        autocmd BufNewFile,BufRead *.py call s:DetectPythonVariant()
        autocmd BufNewFile,BufRead *.py IndentLinesEnable

        " PEP8 compliance (set 1 tab = 4 chars explicitly, even if set
        " earlier, as it is important)
        autocmd filetype python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
        autocmd filetype python setlocal textwidth=80
        " autocmd filetype python match ErrorMsg '\%>80v.\+'

        " But disable autowrapping as it is super annoying
        autocmd filetype python setlocal formatoptions-=t

    augroup end " }}}

    augroup ruby_files "{{{
        au!

        autocmd filetype ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
    augroup end " }}}

    augroup rst_files "{{{
        au!

        " Auto-wrap text around 74 chars
        autocmd filetype rst setlocal textwidth=74
        autocmd filetype rst setlocal formatoptions+=nqt
        autocmd filetype rst match ErrorMsg '\%>74v.\+'
    augroup end " }}}

    augroup css_files "{{{
        au!

        autocmd filetype css,less setlocal foldmethod=marker foldmarker={,}
    augroup end "}}}

    augroup javascript_files "{{{
        au!

        autocmd filetype javascript setlocal expandtab
        autocmd filetype javascript setlocal listchars=trail:·,extends:#,nbsp:·
        autocmd filetype javascript setlocal foldmethod=marker foldmarker={,}
    augroup end "}}}

    augroup textile_files "{{{
        au!

        autocmd filetype textile set tw=78 wrap

        " Render YAML front matter inside Textile documents as comments
        autocmd filetype textile syntax region frontmatter start=/\%^---$/ end=/^---$/
        autocmd filetype textile highlight link frontmatter Comment
    augroup end "}}}

    augroup temporary_files "{{{
        au!

        au BufNewFile,BufRead /tmp/*,/private/tmp/* setlocal noundofile
    augroup end "}}}

    augroup lilypond "{{{
        au!

        autocmd filetype lilypond setlocal commentstring=%%\ %s
    augroup end "}}}

    augroup temporary_files "{{{
        au!

        au BufNewFile,BufRead /tmp/*,/private/tmp/* setlocal noundofile
    augroup end "}}}


endif"}}}


command! PackUpdate call minpac#update()
command! PackClean  call minpac#clean()
command! PackHelp   helptags $VIMCONFIG/pack
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
nmap gi :IndentLinesToggle<CR>
nnoremap <C-p> :<C-u>FZF<CR>
let g:UltiSnipsNoPythonWarning = 1
let g:indentLine_loaded = 0
colorscheme mustang

" vim:foldmethod=marker
