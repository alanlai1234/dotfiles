-- nvim lsp
vim.lsp.enable({"clangd", "pyright", "eslint"})

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
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
			completion = {
		},
	  -- documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
	  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
	  ['<C-f>'] = cmp.mapping.scroll_docs(4),
	  ['<C-e>'] = cmp.mapping.abort(),
	  ['<CR>'] = cmp.mapping.confirm({ select = false }),
	  ['<Tab>'] = cmp.mapping(function(fallback)
		  local col = vim.fn.col('.') - 1

		  if cmp.visible() then
			cmp.select_next_item(select_opts)
		  elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
			fallback()
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
		{ name = 'vsnip' },	
		{ name = 'buffer' },
		{ name = 'path'}
	}),

	formatting = {
		fields = { "kind", "abbr", "menu"},
		format = function(entry, vim_item)
			vim_item.kind = string.format('%s', kind_icons[vim_item.kind])
			vim_item.menu = ({
				buffer = "[Buffer]",
				nvim_lsp = "[LSP]",
				vsnip = "[vsnip]",
				nvim_lua = "[Lua]",
			})[entry.source.name]
			return vim_item
		end
	}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config("eslint", {capabilities = capabilities})
vim.lsp.config("clangd", {capabilities = capabilities})
require("tiny-inline-diagnostic").setup()


-- bufferline.nvim
require("bufferline").setup{}

-- autopair
require("nvim-autopairs").setup {}

-- telescope.nvim
require("telescope").load_extension "file_browser"

vim.treesitter.language.register("javascript", "javascriptreact")
