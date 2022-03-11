set nocompatible
set ttyfast
set lazyredraw
set noshowmode
syntax on
set mouse=a
set hidden
set encoding=utf-8
set clipboard=unnamedplus
set nocursorline
set number relativenumber
set tabstop=4
set shiftwidth=4
set updatetime=100
" fold settings
"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=10
set foldnestmax=3 
"end fold settings
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_indent_levels = 3

" make vim smoother
set timeoutlen=1000
set ttimeoutlen=0

autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 ruler

"treesitter
:lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
	enable = true,              
  },
}
require "nvim-treesitter.highlight"
vim.treesitter.highlighter.hl_map.error = nil
EOF

"python support
"let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.8/bin/python3.8'
"let g:loaded_python_provider = 0

"vimspector
"let g:vimspector_enable_mappings = 'HUMAN'

" discord rich presence
":lua <<EOF
"require("presence"):setup({
    "auto_update         = true,
    "neovim_image_text   = "neovim text editor",
    "main_image          = "neovim",
    "client_id           = "944957102458281984",
    "log_level           = "debug",
    "debounce_timeout    = 10,
    "enable_line_number  = false,
    "blacklist           = {},
    "buttons             = false,
    "file_assets         = {},
    "editing_text        = "Editing %s",
    "file_explorer_text  = "Browsing %s",
    "git_commit_text     = "Committing changes",
    "plugin_manager_text = "Managing plugins",
    "reading_text        = "Reading %s",
    "workspace_text      = "Working on %s",
    "line_number_text    = "Line %s out of %s",
"})
"EOF
