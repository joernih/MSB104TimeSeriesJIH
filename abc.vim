let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
map  :echo expand('%:p') 
map  :Explore
snoremap <silent>  "_c
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
map  :NERDTreeToggle
snoremap  "_c
map  :bel terminal
map  :vertical terminal
map  :tabe %
vmap ,rp :call RClearAll()
nmap ,rp :call RClearAll()
vmap ,rc <Plug>RClearAll
nmap ,rc <Plug>RClearAll
map 7 :FloatermNew
map 9 :FloatermKill
nmap <silent> ^M :call SendLineToR("down")
map cw0 <C-w 0>
map cz ::tabe %
map cx :q!
map cw 
map ct :tabnew ~/.vimrc
map cs :source ~/.vimrc
map cm :mksession! abc.vim
map cp :vsplit
map cg :! gitp update
map cn :
map cr ?
map cf /
map cd :sh
map cb1 :buffer 1  
map cl :buffers 
map ce :tabedit 
map cb :buffer 
map ca :qall!
map c+ :bel terminal
map c0 :bel vertical terminal
map c1 :split
map cc :call RClearAll()
map c6 :norm $Aaa
map c5 :5tabnext
map c4 :4tabnext
map c3 :3tabnext
map c2 :vsplit
map fq :FloatermKill
map fm :FloatermToogle
map fn :FloatermNew
map fh :FZF ~
map ff :FZF
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
map gd :bd 
map gp :bp
map gn :bn
map rm :RMarkdown
map wa :wqall!
map wq :wq
map ww :w 
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))
snoremap <C-R> "_c
snoremap <silent> <C-H> "_c
snoremap <silent> <Del> "_c
snoremap <silent> <BS> "_c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
tnoremap <silent> <Plug>(fzf-normal) 
tnoremap <silent> <Plug>(fzf-insert) i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
nnoremap <silent> <Plug>(fzf-insert) i
map <C-A> :echo expand('%:p') 
map <C-E> :Explore
map <C-N> :NERDTreeToggle
map <C-Z> :tabe %
map <C-Y> :vertical terminal
map <C-T> :bel terminal
inoremap <silent> 	 =UltiSnips#ExpandSnippet()
imap ,rp :call RClearAll()
imap ,rc <Plug>RClearAll
imap jj 
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set backupdir=~/.cache/vim/backup//
set belloff=all
set clipboard=unnamedplus
set directory=~/gitclones/homepageJIH/external/sessions/swap/
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=nb
set pyxversion=3
set ruler
set runtimepath=~/.vim,~/.vim/plugged/AutoComplPop,~/.vim/plugged/vimtex,~/.vim/plugged/fzf,~/.vim/plugged/Nvim-R,~/.vim/plugged/vim-floaterm,~/.vim/plugged/ncm2,~/.vim/plugged/vim-hug-neovim-rpc,~/.vim/plugged/UltiSnips,~/.vim/plugged/ncm2-ultisnips,~/.vim/plugged/Vundle.vim,~/.vim/plugged/vim-matlab,~/.vim/plugged/vim-orgmode,~/.vim/plugged/popup.nvim,~/.vim/plugged/plenary.nvim,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vimfiles/after,~/.vim/after,~/.vim/plugged/vimtex/after,~/.vim/plugged/UltiSnips/after,~/.vim/bundle/Vundle.vim
set shell=zsh
set statusline=%F%F
set suffixes=.bak,~,.o,.info,.swp,.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set noswapfile
set switchbuf=useopen
set undodir=~/.cache/vim/undo//
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/teaching/MSB104TimeSeriesJIH
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit index.Rmd
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 170 + 114) / 228)
exe 'vert 2resize ' . ((&columns * 57 + 114) / 228)
argglobal
balt index.Rmd
vnoremap <buffer> <silent> ,kn :call RKnit()
vnoremap <buffer> <silent> ,rd :call RSetWD()
vnoremap <buffer> <silent> ,ko :call RMakeRmd("odt_document")
vnoremap <buffer> <silent> ,kh :call RMakeRmd("html_document")
vnoremap <buffer> <silent> ,kw :call RMakeRmd("word_document")
vnoremap <buffer> <silent> ,kl :call RMakeRmd("beamer_presentation")
vnoremap <buffer> <silent> ,kp :call RMakeRmd("pdf_document")
vnoremap <buffer> <silent> ,kr :call RMakeRmd("default")
vnoremap <buffer> <silent> ,r- :call RBrOpenCloseLs("C")
vnoremap <buffer> <silent> ,r= :call RBrOpenCloseLs("O")
vnoremap <buffer> <silent> ,ro :call RObjBrowser()
vnoremap <buffer> <silent> ,rb :call RAction("plotsumm", "v")
vnoremap <buffer> <silent> ,rg :call RAction("plot", "v")
vnoremap <buffer> <silent> ,rs :call RAction("summary", "v")
vnoremap <buffer> <silent> ,rh :call RAction("help")
vnoremap <buffer> <silent> ,re :call RAction("example")
vnoremap <buffer> <silent> ,ra :call RAction("args")
vnoremap <buffer> <silent> ,td :call RAction("dputtab", "v")
vnoremap <buffer> <silent> ,vh :call RAction("viewobj", "v", ", howto='above 7split', nrows=6")
vnoremap <buffer> <silent> ,vv :call RAction("viewobj", "v", ", howto='vsplit'")
vnoremap <buffer> <silent> ,vs :call RAction("viewobj", "v", ", howto='split'")
vnoremap <buffer> <silent> ,rv :call RAction("viewobj", "v")
vnoremap <buffer> <silent> ,rt :call RAction("str", "v")
vnoremap <buffer> <silent> ,rn :call RAction("nvim.names", "v")
vnoremap <buffer> <silent> ,rp :call RAction("print", "v")
vnoremap <buffer> <silent> ,rr :call RClearConsole()
vnoremap <buffer> <silent> ,rl :call g:SendCmdToR("ls()")
vnoremap <buffer> <silent> ,o :call RWarningMsg("This command does not work over a selection of lines.")
vnoremap <buffer> <silent> ,sa :call SendSelectionToR("echo", "down")
vnoremap <buffer> <silent> ,sd :call SendSelectionToR("silent", "down")
vnoremap <buffer> <silent> ,se :call SendSelectionToR("echo", "stay")
vnoremap <buffer> <silent> ,ss :call SendSelectionToR("silent", "stay")
vnoremap <buffer> <silent> ,fa :call SendFunctionToR("echo", "down")
vnoremap <buffer> <silent> ,fd :call SendFunctionToR("silent", "down")
vnoremap <buffer> <silent> ,fe :call SendFunctionToR("echo", "stay")
vnoremap <buffer> <silent> ,ff :call SendFunctionToR("silent", "stay")
vnoremap <buffer> <silent> ,; :call MovePosRCodeComment("selection")
vnoremap <buffer> <silent> ,xu :call RSimpleCommentLine("selection", "u")
vnoremap <buffer> <silent> ,xc :call RSimpleCommentLine("selection", "c")
vnoremap <buffer> <silent> ,xx :call RComment("selection")
vnoremap <buffer> <silent> ,rw :call RQuit('save')
vnoremap <buffer> <silent> ,rq :call RQuit('nosave')
vnoremap <buffer> <silent> ,rc :call StartR("custom")
vnoremap <buffer> <silent> ,rf :call StartR("R")
noremap <buffer> <silent> ,gN :call b:PreviousRChunk()
noremap <buffer> <silent> ,gn :call b:NextRChunk()
noremap <buffer> <silent> ,ca :call b:SendChunkToR("echo", "down")
noremap <buffer> <silent> ,cd :call b:SendChunkToR("silent", "down")
noremap <buffer> <silent> ,ce :call b:SendChunkToR("echo", "stay")
noremap <buffer> <silent> ,cc :call b:SendChunkToR("silent", "stay")
nnoremap <buffer> <silent> ,kn :call RKnit()
onoremap <buffer> <silent> ,kn :call RKnit()
nnoremap <buffer> <silent> ,rd :call RSetWD()
onoremap <buffer> <silent> ,rd :call RSetWD()
nnoremap <buffer> <silent> ,ko :call RMakeRmd("odt_document")
onoremap <buffer> <silent> ,ko :call RMakeRmd("odt_document")
nnoremap <buffer> <silent> ,kh :call RMakeRmd("html_document")
onoremap <buffer> <silent> ,kh :call RMakeRmd("html_document")
nnoremap <buffer> <silent> ,kw :call RMakeRmd("word_document")
onoremap <buffer> <silent> ,kw :call RMakeRmd("word_document")
nnoremap <buffer> <silent> ,kl :call RMakeRmd("beamer_presentation")
onoremap <buffer> <silent> ,kl :call RMakeRmd("beamer_presentation")
nnoremap <buffer> <silent> ,kp :call RMakeRmd("pdf_document")
onoremap <buffer> <silent> ,kp :call RMakeRmd("pdf_document")
nnoremap <buffer> <silent> ,kr :call RMakeRmd("default")
onoremap <buffer> <silent> ,kr :call RMakeRmd("default")
nnoremap <buffer> <silent> ,r- :call RBrOpenCloseLs("C")
onoremap <buffer> <silent> ,r- :call RBrOpenCloseLs("C")
nnoremap <buffer> <silent> ,r= :call RBrOpenCloseLs("O")
onoremap <buffer> <silent> ,r= :call RBrOpenCloseLs("O")
nnoremap <buffer> <silent> ,ro :call RObjBrowser()
onoremap <buffer> <silent> ,ro :call RObjBrowser()
nnoremap <buffer> <silent> ,rb :call RAction("plotsumm")
onoremap <buffer> <silent> ,rb :call RAction("plotsumm")
nnoremap <buffer> <silent> ,rg :call RAction("plot")
onoremap <buffer> <silent> ,rg :call RAction("plot")
nnoremap <buffer> <silent> ,rs :call RAction("summary")
onoremap <buffer> <silent> ,rs :call RAction("summary")
nnoremap <buffer> <silent> ,rh :call RAction("help")
onoremap <buffer> <silent> ,rh :call RAction("help")
nnoremap <buffer> <silent> ,re :call RAction("example")
onoremap <buffer> <silent> ,re :call RAction("example")
nnoremap <buffer> <silent> ,ra :call RAction("args")
onoremap <buffer> <silent> ,ra :call RAction("args")
nnoremap <buffer> <silent> ,td :call RAction("dputtab")
onoremap <buffer> <silent> ,td :call RAction("dputtab")
nnoremap <buffer> <silent> ,vh :call RAction("viewobj", ", howto='above 7split', nrows=6")
onoremap <buffer> <silent> ,vh :call RAction("viewobj", ", howto='above 7split', nrows=6")
nnoremap <buffer> <silent> ,vv :call RAction("viewobj", ", howto='vsplit'")
onoremap <buffer> <silent> ,vv :call RAction("viewobj", ", howto='vsplit'")
nnoremap <buffer> <silent> ,vs :call RAction("viewobj", ", howto='split'")
onoremap <buffer> <silent> ,vs :call RAction("viewobj", ", howto='split'")
nnoremap <buffer> <silent> ,rv :call RAction("viewobj")
onoremap <buffer> <silent> ,rv :call RAction("viewobj")
nnoremap <buffer> <silent> ,rt :call RAction("str")
onoremap <buffer> <silent> ,rt :call RAction("str")
nnoremap <buffer> <silent> ,rn :call RAction("nvim.names")
onoremap <buffer> <silent> ,rn :call RAction("nvim.names")
nnoremap <buffer> <silent> ,rp :call RAction("print")
onoremap <buffer> <silent> ,rp :call RAction("print")
nnoremap <buffer> <silent> ,rr :call RClearConsole()
onoremap <buffer> <silent> ,rr :call RClearConsole()
nnoremap <buffer> <silent> ,rl :call g:SendCmdToR("ls()")
onoremap <buffer> <silent> ,rl :call g:SendCmdToR("ls()")
noremap <buffer> <silent> ,ud :call RAction("undebug")
noremap <buffer> <silent> ,bg :call RAction("debug")
let s:cpo_save=&cpo
set cpo&vim
noremap <buffer> <silent> ,r<Right> :call RSendPartOfLine("right", 0)
noremap <buffer> <silent> ,r<Left> :call RSendPartOfLine("left", 0)
noremap <buffer> <silent> ,m :set opfunc=SendMotionToRg@
nnoremap <buffer> <silent> ,o :call SendLineToRAndInsertOutput()0
onoremap <buffer> <silent> ,o :call SendLineToRAndInsertOutput()0
noremap <buffer> <silent> ,d :call SendLineToR("down")0
noremap <buffer> <silent> ,l :call SendLineToR("stay")
noremap <buffer> <silent> ,ch :call SendFHChunkToR()
noremap <buffer> <silent> ,pa :call SendParagraphToR("echo", "down")
noremap <buffer> <silent> ,pd :call SendParagraphToR("silent", "down")
noremap <buffer> <silent> ,pe :call SendParagraphToR("echo", "stay")
noremap <buffer> <silent> ,pp :call SendParagraphToR("silent", "stay")
vnoremap <buffer> <silent> ,so :call SendSelectionToR("echo", "stay", "NewtabInsert")
nnoremap <buffer> <silent> ,sa :call SendSelectionToR("echo", "down", "normal")
onoremap <buffer> <silent> ,sa :call SendSelectionToR("echo", "down", "normal")
nnoremap <buffer> <silent> ,sd :call SendSelectionToR("silent", "down", "normal")
onoremap <buffer> <silent> ,sd :call SendSelectionToR("silent", "down", "normal")
nnoremap <buffer> <silent> ,se :call SendSelectionToR("echo", "stay", "normal")
onoremap <buffer> <silent> ,se :call SendSelectionToR("echo", "stay", "normal")
nnoremap <buffer> <silent> ,ss :call SendSelectionToR("silent", "stay", "normal")
onoremap <buffer> <silent> ,ss :call SendSelectionToR("silent", "stay", "normal")
nnoremap <buffer> <silent> ,fa :call SendFunctionToR("echo", "down")
onoremap <buffer> <silent> ,fa :call SendFunctionToR("echo", "down")
nnoremap <buffer> <silent> ,fd :call SendFunctionToR("silent", "down")
onoremap <buffer> <silent> ,fd :call SendFunctionToR("silent", "down")
nnoremap <buffer> <silent> ,fe :call SendFunctionToR("echo", "stay")
onoremap <buffer> <silent> ,fe :call SendFunctionToR("echo", "stay")
nnoremap <buffer> <silent> ,ff :call SendFunctionToR("silent", "stay")
onoremap <buffer> <silent> ,ff :call SendFunctionToR("silent", "stay")
noremap <buffer> <silent> ,ba :call SendMBlockToR("echo", "down")
noremap <buffer> <silent> ,bd :call SendMBlockToR("silent", "down")
noremap <buffer> <silent> ,be :call SendMBlockToR("echo", "stay")
noremap <buffer> <silent> ,bb :call SendMBlockToR("silent", "stay")
nnoremap <buffer> <silent> ,; :call MovePosRCodeComment("normal")
onoremap <buffer> <silent> ,; :call MovePosRCodeComment("normal")
nnoremap <buffer> <silent> ,xu :call RSimpleCommentLine("normal", "u")
onoremap <buffer> <silent> ,xu :call RSimpleCommentLine("normal", "u")
nnoremap <buffer> <silent> ,xc :call RSimpleCommentLine("normal", "c")
onoremap <buffer> <silent> ,xc :call RSimpleCommentLine("normal", "c")
nnoremap <buffer> <silent> ,xx :call RComment("normal")
onoremap <buffer> <silent> ,xx :call RComment("normal")
nnoremap <buffer> <silent> ,rw :call RQuit('save')
onoremap <buffer> <silent> ,rw :call RQuit('save')
nnoremap <buffer> <silent> ,rq :call RQuit('nosave')
onoremap <buffer> <silent> ,rq :call RQuit('nosave')
nnoremap <buffer> <silent> ,rc :call StartR("custom")
onoremap <buffer> <silent> ,rc :call StartR("custom")
nnoremap <buffer> <silent> ,rf :call StartR("R")
onoremap <buffer> <silent> ,rf :call StartR("R")
vnoremap <buffer> <silent> <Plug>RKnit :call RKnit()
vnoremap <buffer> <silent> <Plug>RSetwd :call RSetWD()
vnoremap <buffer> <silent> <Plug>RMakeODT :call RMakeRmd("odt_document")
vnoremap <buffer> <silent> <Plug>RMakeHTML :call RMakeRmd("html_document")
vnoremap <buffer> <silent> <Plug>RMakeWord :call RMakeRmd("word_document")
vnoremap <buffer> <silent> <Plug>RMakePDFKb :call RMakeRmd("beamer_presentation")
vnoremap <buffer> <silent> <Plug>RMakePDFK :call RMakeRmd("pdf_document")
vnoremap <buffer> <silent> <Plug>RMakeRmd :call RMakeRmd("default")
vnoremap <buffer> <silent> <Plug>RCloseLists :call RBrOpenCloseLs("C")
vnoremap <buffer> <silent> <Plug>ROpenLists :call RBrOpenCloseLs("O")
vnoremap <buffer> <silent> <Plug>RUpdateObjBrowser :call RObjBrowser()
vnoremap <buffer> <silent> <Plug>RSPlot :call RAction("plotsumm", "v")
vnoremap <buffer> <silent> <Plug>RPlot :call RAction("plot", "v")
vnoremap <buffer> <silent> <Plug>RSummary :call RAction("summary", "v")
vnoremap <buffer> <silent> <Plug>RHelp :call RAction("help")
vnoremap <buffer> <silent> <Plug>RShowEx :call RAction("example")
vnoremap <buffer> <silent> <Plug>RShowArgs :call RAction("args")
vnoremap <buffer> <silent> <Plug>RDputObj :call RAction("dputtab", "v")
vnoremap <buffer> <silent> <Plug>RViewDFa :call RAction("viewobj", "v", ", howto='above 7split', nrows=6")
vnoremap <buffer> <silent> <Plug>RViewDFv :call RAction("viewobj", "v", ", howto='vsplit'")
vnoremap <buffer> <silent> <Plug>RViewDFs :call RAction("viewobj", "v", ", howto='split'")
vnoremap <buffer> <silent> <Plug>RViewDF :call RAction("viewobj", "v")
vnoremap <buffer> <silent> <Plug>RObjectStr :call RAction("str", "v")
vnoremap <buffer> <silent> <Plug>RObjectNames :call RAction("nvim.names", "v")
vnoremap <buffer> <silent> <Plug>RObjectPr :call RAction("print", "v")
vnoremap <buffer> <silent> <Plug>RClearAll :call RClearAll()
vnoremap <buffer> <silent> <Plug>RClearConsole :call RClearConsole()
vnoremap <buffer> <silent> <Plug>RListSpace :call g:SendCmdToR("ls()")
vnoremap <buffer> <silent> <Plug>(RDSendLineAndInsertOutput) :call RWarningMsg("This command does not work over a selection of lines.")
vnoremap <buffer> <silent> <Plug>REDSendSelection :call SendSelectionToR("echo", "down")
vnoremap <buffer> <silent> <Plug>RDSendSelection :call SendSelectionToR("silent", "down")
vnoremap <buffer> <silent> <Plug>RESendSelection :call SendSelectionToR("echo", "stay")
vnoremap <buffer> <silent> <Plug>RSendSelection :call SendSelectionToR("silent", "stay")
vnoremap <buffer> <silent> <Plug>RDSendFunction :call SendFunctionToR("echo", "down")
nnoremap <buffer> <silent> <Plug>RDSendFunction :call SendFunctionToR("echo", "down")
onoremap <buffer> <silent> <Plug>RDSendFunction :call SendFunctionToR("echo", "down")
vnoremap <buffer> <silent> <Plug>RSendFunction :call SendFunctionToR("silent", "stay")
vnoremap <buffer> <silent> <Plug>RRightComment :call MovePosRCodeComment("selection")
vnoremap <buffer> <silent> <Plug>RSimpleUnComment :call RSimpleCommentLine("selection", "u")
vnoremap <buffer> <silent> <Plug>RSimpleComment :call RSimpleCommentLine("selection", "c")
vnoremap <buffer> <silent> <Plug>RToggleComment :call RComment("selection")
vnoremap <buffer> <silent> <Plug>RSaveClose :call RQuit('save')
vnoremap <buffer> <silent> <Plug>RClose :call RQuit('nosave')
vnoremap <buffer> <silent> <Plug>RCustomStart :call StartR("custom")
vnoremap <buffer> <silent> <Plug>RStart :call StartR("R")
noremap <buffer> <silent> <Plug>RPreviousRChunk :call b:PreviousRChunk()
noremap <buffer> <silent> <Plug>RNextRChunk :call b:NextRChunk()
noremap <buffer> <silent> <Plug>REDSendChunk :call b:SendChunkToR("echo", "down")
noremap <buffer> <silent> <Plug>RDSendChunk :call b:SendChunkToR("silent", "down")
noremap <buffer> <silent> <Plug>RESendChunk :call b:SendChunkToR("echo", "stay")
noremap <buffer> <silent> <Plug>RSendChunk :call b:SendChunkToR("silent", "stay")
nnoremap <buffer> <silent> <Plug>RKnit :call RKnit()
onoremap <buffer> <silent> <Plug>RKnit :call RKnit()
nnoremap <buffer> <silent> <Plug>RSetwd :call RSetWD()
onoremap <buffer> <silent> <Plug>RSetwd :call RSetWD()
nnoremap <buffer> <silent> <Plug>RMakeODT :call RMakeRmd("odt_document")
onoremap <buffer> <silent> <Plug>RMakeODT :call RMakeRmd("odt_document")
nnoremap <buffer> <silent> <Plug>RMakeHTML :call RMakeRmd("html_document")
onoremap <buffer> <silent> <Plug>RMakeHTML :call RMakeRmd("html_document")
nnoremap <buffer> <silent> <Plug>RMakeWord :call RMakeRmd("word_document")
onoremap <buffer> <silent> <Plug>RMakeWord :call RMakeRmd("word_document")
nnoremap <buffer> <silent> <Plug>RMakePDFKb :call RMakeRmd("beamer_presentation")
onoremap <buffer> <silent> <Plug>RMakePDFKb :call RMakeRmd("beamer_presentation")
nnoremap <buffer> <silent> <Plug>RMakePDFK :call RMakeRmd("pdf_document")
onoremap <buffer> <silent> <Plug>RMakePDFK :call RMakeRmd("pdf_document")
nnoremap <buffer> <silent> <Plug>RMakeRmd :call RMakeRmd("default")
onoremap <buffer> <silent> <Plug>RMakeRmd :call RMakeRmd("default")
nnoremap <buffer> <silent> <Plug>RCloseLists :call RBrOpenCloseLs("C")
onoremap <buffer> <silent> <Plug>RCloseLists :call RBrOpenCloseLs("C")
nnoremap <buffer> <silent> <Plug>ROpenLists :call RBrOpenCloseLs("O")
onoremap <buffer> <silent> <Plug>ROpenLists :call RBrOpenCloseLs("O")
nnoremap <buffer> <silent> <Plug>RUpdateObjBrowser :call RObjBrowser()
onoremap <buffer> <silent> <Plug>RUpdateObjBrowser :call RObjBrowser()
nnoremap <buffer> <silent> <Plug>RSPlot :call RAction("plotsumm")
onoremap <buffer> <silent> <Plug>RSPlot :call RAction("plotsumm")
nnoremap <buffer> <silent> <Plug>RPlot :call RAction("plot")
onoremap <buffer> <silent> <Plug>RPlot :call RAction("plot")
nnoremap <buffer> <silent> <Plug>RSummary :call RAction("summary")
onoremap <buffer> <silent> <Plug>RSummary :call RAction("summary")
nnoremap <buffer> <silent> <Plug>RHelp :call RAction("help")
onoremap <buffer> <silent> <Plug>RHelp :call RAction("help")
nnoremap <buffer> <silent> <Plug>RShowEx :call RAction("example")
onoremap <buffer> <silent> <Plug>RShowEx :call RAction("example")
nnoremap <buffer> <silent> <Plug>RShowArgs :call RAction("args")
onoremap <buffer> <silent> <Plug>RShowArgs :call RAction("args")
nnoremap <buffer> <silent> <Plug>RDputObj :call RAction("dputtab")
onoremap <buffer> <silent> <Plug>RDputObj :call RAction("dputtab")
nnoremap <buffer> <silent> <Plug>RViewDFa :call RAction("viewobj", ", howto='above 7split', nrows=6")
onoremap <buffer> <silent> <Plug>RViewDFa :call RAction("viewobj", ", howto='above 7split', nrows=6")
nnoremap <buffer> <silent> <Plug>RViewDFv :call RAction("viewobj", ", howto='vsplit'")
onoremap <buffer> <silent> <Plug>RViewDFv :call RAction("viewobj", ", howto='vsplit'")
nnoremap <buffer> <silent> <Plug>RViewDFs :call RAction("viewobj", ", howto='split'")
onoremap <buffer> <silent> <Plug>RViewDFs :call RAction("viewobj", ", howto='split'")
nnoremap <buffer> <silent> <Plug>RViewDF :call RAction("viewobj")
onoremap <buffer> <silent> <Plug>RViewDF :call RAction("viewobj")
nnoremap <buffer> <silent> <Plug>RObjectStr :call RAction("str")
onoremap <buffer> <silent> <Plug>RObjectStr :call RAction("str")
nnoremap <buffer> <silent> <Plug>RObjectNames :call RAction("nvim.names")
onoremap <buffer> <silent> <Plug>RObjectNames :call RAction("nvim.names")
nnoremap <buffer> <silent> <Plug>RObjectPr :call RAction("print")
onoremap <buffer> <silent> <Plug>RObjectPr :call RAction("print")
nnoremap <buffer> <silent> <Plug>RClearAll :call RClearAll()
onoremap <buffer> <silent> <Plug>RClearAll :call RClearAll()
nnoremap <buffer> <silent> <Plug>RClearConsole :call RClearConsole()
onoremap <buffer> <silent> <Plug>RClearConsole :call RClearConsole()
nnoremap <buffer> <silent> <Plug>RListSpace :call g:SendCmdToR("ls()")
onoremap <buffer> <silent> <Plug>RListSpace :call g:SendCmdToR("ls()")
noremap <buffer> <silent> <Plug>RUndebug :call RAction("undebug")
noremap <buffer> <silent> <Plug>RDebug :call RAction("debug")
noremap <buffer> <silent> <Plug>RNRightPart :call RSendPartOfLine("right", 0)
noremap <buffer> <silent> <Plug>RNLeftPart :call RSendPartOfLine("left", 0)
noremap <buffer> <silent> <Plug>RSendMotion :set opfunc=SendMotionToRg@
nnoremap <buffer> <silent> <Plug>(RDSendLineAndInsertOutput) :call SendLineToRAndInsertOutput()0
onoremap <buffer> <silent> <Plug>(RDSendLineAndInsertOutput) :call SendLineToRAndInsertOutput()0
noremap <buffer> <silent> <Plug>RDSendLine :call SendLineToR("down")0
noremap <buffer> <silent> <Plug>RSendLine :call SendLineToR("stay")
noremap <buffer> <silent> <Plug>RSendChunkFH :call SendFHChunkToR()
noremap <buffer> <silent> <Plug>REDSendParagraph :call SendParagraphToR("echo", "down")
noremap <buffer> <silent> <Plug>RDSendParagraph :call SendParagraphToR("silent", "down")
noremap <buffer> <silent> <Plug>RESendParagraph :call SendParagraphToR("echo", "stay")
noremap <buffer> <silent> <Plug>RSendParagraph :call SendParagraphToR("silent", "stay")
vnoremap <buffer> <silent> <Plug>RSendSelAndInsertOutput :call SendSelectionToR("echo", "stay", "NewtabInsert")
nnoremap <buffer> <silent> <Plug>REDSendSelection :call SendSelectionToR("echo", "down", "normal")
onoremap <buffer> <silent> <Plug>REDSendSelection :call SendSelectionToR("echo", "down", "normal")
nnoremap <buffer> <silent> <Plug>RDSendSelection :call SendSelectionToR("silent", "down", "normal")
onoremap <buffer> <silent> <Plug>RDSendSelection :call SendSelectionToR("silent", "down", "normal")
nnoremap <buffer> <silent> <Plug>RESendSelection :call SendSelectionToR("echo", "stay", "normal")
onoremap <buffer> <silent> <Plug>RESendSelection :call SendSelectionToR("echo", "stay", "normal")
nnoremap <buffer> <silent> <Plug>RSendSelection :call SendSelectionToR("silent", "stay", "normal")
onoremap <buffer> <silent> <Plug>RSendSelection :call SendSelectionToR("silent", "stay", "normal")
nnoremap <buffer> <silent> <Plug>RSendFunction :call SendFunctionToR("silent", "stay")
onoremap <buffer> <silent> <Plug>RSendFunction :call SendFunctionToR("silent", "stay")
noremap <buffer> <silent> <Plug>REDSendMBlock :call SendMBlockToR("echo", "down")
noremap <buffer> <silent> <Plug>RDSendMBlock :call SendMBlockToR("silent", "down")
noremap <buffer> <silent> <Plug>RESendMBlock :call SendMBlockToR("echo", "stay")
noremap <buffer> <silent> <Plug>RSendMBlock :call SendMBlockToR("silent", "stay")
nnoremap <buffer> <silent> <Plug>RRightComment :call MovePosRCodeComment("normal")
onoremap <buffer> <silent> <Plug>RRightComment :call MovePosRCodeComment("normal")
nnoremap <buffer> <silent> <Plug>RSimpleUnComment :call RSimpleCommentLine("normal", "u")
onoremap <buffer> <silent> <Plug>RSimpleUnComment :call RSimpleCommentLine("normal", "u")
nnoremap <buffer> <silent> <Plug>RSimpleComment :call RSimpleCommentLine("normal", "c")
onoremap <buffer> <silent> <Plug>RSimpleComment :call RSimpleCommentLine("normal", "c")
nnoremap <buffer> <silent> <Plug>RToggleComment :call RComment("normal")
onoremap <buffer> <silent> <Plug>RToggleComment :call RComment("normal")
nnoremap <buffer> <silent> <Plug>RSaveClose :call RQuit('save')
onoremap <buffer> <silent> <Plug>RSaveClose :call RQuit('save')
nnoremap <buffer> <silent> <Plug>RClose :call RQuit('nosave')
onoremap <buffer> <silent> <Plug>RClose :call RQuit('nosave')
nnoremap <buffer> <silent> <Plug>RCustomStart :call StartR("custom")
onoremap <buffer> <silent> <Plug>RCustomStart :call StartR("custom")
nnoremap <buffer> <silent> <Plug>RStart :call StartR("R")
onoremap <buffer> <silent> <Plug>RStart :call StartR("R")
inoremap <buffer> <silent> ` :call RWriteRmdChunk()a
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'rmd'
setlocal filetype=rmd
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=FormatRmd()
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^\\s*[-*+]\\s\\+
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetRmdIndent()
setlocal indentkeys=0{,0},<:>,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,.
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=CompleteR
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=8
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'rmd'
setlocal syntax=rmd
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let &fdl = &fdl
let s:l = 18 - ((17 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 0
wincmd w
argglobal
terminal ++curwin ++cols=57 ++rows=51 R
let s:term_buf_2 = bufnr()
balt index.Rmd
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal nobuflisted
setlocal buftype=terminal
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != ''
setlocal filetype=
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal listchars=
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=8
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal virtualedit=
setlocal wincolor=
setlocal nowinfixheight
setlocal winfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 170 + 114) / 228)
exe 'vert 2resize ' . ((&columns * 57 + 114) / 228)
tabnext 1
badd +0 index.Rmd
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
