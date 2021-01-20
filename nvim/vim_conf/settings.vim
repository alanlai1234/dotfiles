set nocompatible
set ttyfast
set lazyredraw
set noshowmode
syntax on
set mouse=a
set hidden
set encoding=utf-8
set clipboard=unnamed
set nocursorline
set number relativenumber
set tabstop=4
set shiftwidth=4
set updatetime=100
" fold settings
set foldmethod=syntax
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

"vista.vim
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1

":lua <<EOF
	"local nvim_lsp = require('lspconfig')
	"local on_attach = function(_, bufnr)
		"local opts = { noremap=true, silent=true }
		"vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
		"vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
		"vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
		"vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
		"vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
		"vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>xD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
		"vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>xr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
		"vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
		"vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>xd', '<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>', opts)
	"end
	"local servers = {'clangd', 'gopls'}
	"for _, lsp in ipairs(servers) do
		"nvim_lsp[lsp].setup {
		  "on_attach = on_attach,
		"}
	"end

"EOF
