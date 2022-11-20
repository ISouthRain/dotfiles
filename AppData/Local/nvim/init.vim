"if has('win32') "macunix unix win32
"    echo "这是Windows 配置"
"endif

call plug#begin()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 加密和解密文件
Plug 'jamessan/vim-gnupg'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 启动插件
Plug 'dstein64/vim-startuptime',{'on': 'StartupTime'} " 测试启动时间 使用命令 StartupTime
Plug 'mhinz/vim-startify' " vim打开最近打开的文件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 书签
Plug 'MattesGroeger/vim-bookmarks' " 书签
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 指导线
Plug 'lukas-reineke/indent-blankline.nvim' " 指导线
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 光标快速移动
Plug 'phaazon/hop.nvim'
" 窗口数字
Plug 'https://gitlab.com/yorickpeterse/nvim-window.git'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer 标签栏
Plug 'vim-airline/vim-airline' " 状态栏美化
Plug 'kyazdani42/nvim-web-devicons' " 图标依赖
Plug 'romgrk/barbar.nvim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件浏览器
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeFind' }
Plug 'ryanoasis/vim-devicons' "文件类型图标
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 翻译插件
Plug 'voldikss/vim-translator'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 注释
"Plug 'numToStr/Comment.nvim'
Plug 'preservim/nerdcommenter', {'on': '<Plug>NERDCommenterToggle'}
Plug 'jiangmiao/auto-pairs' " 符号补全
Plug 'luochen1990/rainbow' " 括号不同颜色
Plug 'mbbill/undotree' " 更改历史
Plug 'lfv89/vim-interestingwords' " 高亮搜索文本不同颜色
" Plug 'itchyny/calendar.vim' " 日历
" Plug 'mg979/vim-visual-multi', {'branch': 'master'} "多光标编辑
"  Plug 'neovim/nvim-lspconfig'
"  Plug 'hrsh7th/cmp-nvim-lsp'
"  Plug 'hrsh7th/cmp-buffer'
"  Plug 'hrsh7th/cmp-path'
"  Plug 'hrsh7th/cmp-cmdline'
"  Plug 'hrsh7th/nvim-cmp'
"  " For vsnip users.
"  Plug 'hrsh7th/cmp-vsnip'
"  Plug 'hrsh7th/vim-vsnip'
"  Plug 'hrsh7th/vim-vsnip-integ'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'xiyaowong/telescope-emoji.nvim'
Plug 'crispgm/telescope-heading.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 命令/搜索提示
Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' } " 命令行提示 与 pynvim 冲突, /搜索用不了
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 中文输入法
Plug 'ISouthRain/ZFVimIM'
Plug 'ISouthRain/ZFVimJob' " 可选, 用于提升词库加载性能
Plug 'ISouthRain/ZFVimIM_openapi' "云词库
Plug 'ISouthRain/ZFVimIM_pinyin' "db文件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 键绑定
" Plug 'anuvyklack/hydra.nvim'
Plug 'folke/which-key.nvim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 主题
Plug 'shaunsingh/solarized.nvim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'KeitaNakamura/neodark.vim'
call plug#end()
" 主题
"colorscheme dracula
"colorscheme solarized
set termguicolors                " recommended
colorscheme neodark


lua require("which-key").setup{}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 基础设置
lua require('init-basic')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" undotree
lua require('init-undotree')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" wilder.nvim
lua require('init-wilder')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" telescope
lua require('init-telescope')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" treesitter
lua require('init-treesitter')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim-window
lua require('init-nvim-window')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 中文输入法
lua require('init-ZFVimIM')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lsp
"  lua require('init-lsp')
"  lua require('init-comp')
"  lua require('init-vsnip')
lua require('init-coc')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-translator
lua require('init-translator')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" keymap
lua require('init-keymap')

