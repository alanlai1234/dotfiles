set hidden
set nocompatible
set ttyfast
set lazyredraw
set noshowmode
syntax on
set mouse=a
set encoding=utf-8
set clipboard=unnamedplus
set nocursorline
set number relativenumber
set tabstop=4
set shiftwidth=4

" fold settings
"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=10
set foldnestmax=3 

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_indent_levels = 3

autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 ruler

"treesitter
:lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
	enable = true,              
  },
}
EOF

"nvim lsp
:lua <<EOF
require('lspconfig').clangd.setup{}
require('lspconfig').pyright.setup{}

-- Set up nvim-cmp.
local cmp = require'cmp'

local kind_icons = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "󱄑",
  Class = "ﴯ",
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = ""
}

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
	  -- documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
	  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
	  ['<C-f>'] = cmp.mapping.scroll_docs(4),
	  ['<C-e>'] = cmp.mapping.abort(),
	  ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	  ['<Tab>'] = cmp.mapping(function(fallback)
		  local col = vim.fn.col('.') - 1

		  if cmp.visible() then
			cmp.select_next_item(select_opts)
		  elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
			fallback()
		  else
			cmp.complete()
		  end
		end, {'i', 's'}),

		['<S-Tab>'] = cmp.mapping(function(fallback)
		  if cmp.visible() then
			cmp.select_prev_item(select_opts)
		  else
			fallback()
		  end
		end, {'i', 's'}),
	}),
	sources = cmp.config.sources({
	  { name = 'nvim_lsp' },
	{ name = 'vsnip' }, -- For vsnip users.
	  -- { name = 'luasnip' }, -- For luasnip users.
	  -- { name = 'ultisnips' }, -- For ultisnips users.
	  -- { name = 'snippy' }, -- For snippy users.
	}, {
	  { name = 'buffer' },
	}),

    formatting = {
		fields = { "kind", "abbr"},
		format = function(entry, vim_item)
			-- Kind icons
			vim_item.kind = string.format('%s', kind_icons[vim_item.kind])
			-- Source
			vim_item.menu = ({
				--buffer = "[Buffer]",
				--nvim_lsp = "[LSP]",
				--nvim_lua = "[Lua]",
				--latex_symbols = "[LaTeX]",
			})[entry.source.name]
			return vim_item
		end
	}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['clangd'].setup {
	capabilities = capabilities
}
EOF

" bufferline.nvim
lua << EOF
require("bufferline").setup{}
EOF
