vim.cmd([[

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" undotree
if has("persistent_undo")
    if has('win32')
        let target_path = expand('~/.config/nvim/.undodir')
    endif
    if has('unix')
        let target_path = expand('~/.config/nvim/.undodir')
    endif
    if has('macunix')
        let target_path = expand('~/.config/nvim/.undodir')
    endif
    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

]])