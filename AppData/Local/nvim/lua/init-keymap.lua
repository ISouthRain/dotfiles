vim.cmd([[

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Vim 键绑定
    nnoremap ; :
    nnoremap qq :q<CR>
    inoremap jk <ESC>
    nnoremap <F2> :Startify<CR>
    nnoremap <C-g> <ESC>
	vnoremap <C-g> <ESC>
    nnoremap <C-x><C-c> :q
    nnoremap <A-x> :
    vnoremap <A-x> :
    nnoremap <Leader>bk <cmd>bdelete<CR>
    
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Leader 键修改
    let g:mapleader = "\<Space>"
    set timeoutlen=500
    " set timeoutlen=1000
    let g:maplocalleader = ','
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " 窗口
    nnoremap <Leader>wl <C-w>l
    nnoremap <Leader>wh <C-w>h
    nnoremap <Leader>wk <C-w>k
    nnoremap <Leader>wj <C-w>j
    nnoremap <Leader>wd <C-w>q
    nnoremap <Leader>wv <C-w>v
    nnoremap <Leader>ws <C-w>s
    map <silent> <Leader>ww :lua require('nvim-window').pick()<CR>
    
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " vim-bookmarks
    " 注释书签
    let g:bookmark_no_default_key_mappings = 0
    nnoremap ma :BookmarkAnnotate<CR>
    nnoremap mm :BookmarkToggle<CR>
    nnoremap ms :BookmarkShowAll<CR>
    nnoremap mj :BookmarkNext<CR>
    nnoremap mk :BookmarkPrev<CR>
    nnoremap mC :BookmarkClearAll<CR>
    nnoremap mc :BookmarkClear<CR>
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " nerdtree 文件浏览器
    nnoremap <Leader>op :NERDTreeFind<CR>
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " hop.nvim
    nnoremap <Leader><Space> :HopChar1<CR>
    vnoremap <Leader><Space> :HopChar1<CR>
    
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Telescop
    nnoremap <Leader>bb <cmd>Telescope buffers<CR>
    nnoremap <Leader>bk <cmd>bdelete<CR>
    nnoremap <Leader>sp <cmd>Telescope grep_string<CR>
    nnoremap <Leader>ps <cmd>Telescope live_grep<CR>
    nnoremap <Leader>fr <cmd>Telescope oldfiles<CR>
    nnoremap <Leader>pf <cmd>Telescope find_files<CR>
    nnoremap <Leader>ie <cmd>Telescope emoji<CR>
    nnoremap <Leader>si <cmd>Telescope heading<CR>
    " nnoremap ; <cmd>Telescope commands<CR>
    " nnoremap : <cmd>Telescope commands<CR>
    nnoremap <A-x> <cmd>Telescope commands<CR>
    
    nnoremap " <cmd>Telescope registers<CR>
    
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" 注释
	nmap <C-x><C-;> <Plug>NERDCommenterToggle
	vmap <C-x><C-;> <Plug>NERDCommenterToggle
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" vim-translator
    """ Configuration example
    " Echo translation in the cmdline
    nmap <silent> <Leader>fYt <Plug>Translate
    vmap <silent> <Leader>fYt <Plug>TranslateV
    " Display translation in a window
    nmap <silent> <Leader>fy <Plug>TranslateW
    vmap <silent> <Leader>fy <Plug>TranslateWV
    " Replace the text with translation
    nmap <silent> <Leader>fYr <Plug>TranslateR
    vmap <silent> <Leader>fYr <Plug>TranslateRV
    " Translate the text in clipboard
    nmap <silent> <Leader>fYx <Plug>TranslateX

    ]]) ------- Viml End