-- treesitter
require('nvim-treesitter').install({ 'cpp', 'python', 'javascript'})

-- nvim lsp
vim.lsp.enable({"clangd", "pyright"})

-- Set up nvim-cmp.
local cmp = require'cmp'

local kind_icons = {
	Text = "󰉿",
	Method = "󰆧",
	Function = "󰊕",
	Constructor = "",
	Field = "󰜢",
	Variable = "󰀫",
	Class = "󰠱",
	Interface = "",
	Module = "",
	Property = "󰜢",
	Unit = "󰑭",
	Value = "󰎠",
	Enum = "",
	Keyword = "󰌋",
	Snippet = "",
	Color = "󰏘",
	File = "󰈙",
	Reference = "󰈇",
	Folder = "󰉋",
	EnumMember = "",
	Constant = "󰏿",
	Struct = "󰙅",
	Event = "",
	Operator = "󰆕",
	TypeParameter = "",
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
vim.lsp.config("clangd", {capabilities = capabilities})
require("tiny-inline-diagnostic").setup()


-- bufferline.nvim
require("bufferline").setup{}

-- autopair
require("nvim-autopairs").setup {}
