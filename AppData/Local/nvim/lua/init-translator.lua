vim.cmd([[
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-translator
"翻译窗口设置"
let g:translator_window_type = 'preview'
let g:translator_window_max_width = 0.6
let g:translator_window_max_height = 0.4
" 翻译到目标的语言
let g:translator_target_lang = 'zh'

let g:translator_default_engines = ['bing', 'google']
"" 翻译器窗口的文本突出显示
hi def link TranslatorQuery             Identifier
hi def link TranslatorDelimiter         Special
hi def link TranslatorExplain           Statement

" 翻译器窗口边框背景
hi def link Translator                  Normal
hi def link TranslatorBorder            NormalFloat"

" let g:translator_proxy_url = 'socks5://127.0.0.1:7891'
" if has('win32') "macunix unix win32
" " 代理
"     let g:translator_proxy_url = 'socks5://127.0.0.1:7890'
" endif


]])