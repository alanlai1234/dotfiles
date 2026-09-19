vim.opt.laststatus = 2
vim.api.nvim_set_hl(0, "roundtrans", {fg="#fab152", bg="#535961"})
vim.api.nvim_set_hl(0, "round2fg", {fg="#fab152"})
vim.api.nvim_set_hl(0, "ModeColor", {bg="#fab152", fg="#0b2026"})
vim.api.nvim_set_hl(0, "modify", {fg="#cf6848", bg="#535961"})
vim.api.nvim_set_hl(0, "good", {fg="#8acf72", bg="#535961"})
vim.api.nvim_set_hl(0, "err", {fg="#e85635", bg="#535961"})
vim.api.nvim_set_hl(0, "warn", {fg="#8acf72", bg="#535961"})

local visualevent = vim.api.nvim_create_augroup("VisualEvent", { clear=true })

vim.api.nvim_create_autocmd("ModeChanged", {
	group = visualevent,
	pattern = "*:i*",
	callback = function()
		print("insert")
		vim.api.nvim_set_hl(0, "ModeColor", {bg="#6ffc90", fg="#0b2026"})
		vim.api.nvim_set_hl(0, "roundtrans", {fg="#6ffc90", bg="#535961"})
		vim.api.nvim_set_hl(0, "round2fg", {fg="#6ffc90"})
	end
})

vim.api.nvim_create_autocmd("ModeChanged", {
	group = visualevent,
	pattern = "*:c*",
	callback = function()
		vim.api.nvim_set_hl(0, "ModeColor", { bg = "#53f7fc" , fg="#0b2026"})
		vim.api.nvim_set_hl(0, "roundtrans", { fg = "#53f7fc" , bg="#535961"})
		vim.api.nvim_set_hl(0, "round2fg", { fg = "#53f7fc" })
	end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
	group = visualevent,
	pattern = "*:v*",
	callback = function()
		vim.api.nvim_set_hl(0, "ModeColor", { bg = "#f2acfa" , fg="#0b2026"})
		vim.api.nvim_set_hl(0, "roundtrans", { fg = "#f2acfa" , bg="#535961"})
		vim.api.nvim_set_hl(0, "round2fg", { fg = "#f2acfa" })
	end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
	group = visualevent,
	pattern = "*:V*",
	callback = function()
		vim.api.nvim_set_hl(0, "ModeColor", { bg = "#659666", fg = "#d3dbd6" })
		vim.api.nvim_set_hl(0, "roundtrans", { fg = "#659666" , bg="#535961"})
		vim.api.nvim_set_hl(0, "round2fg", { fg = "#659666" })
	end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
	group = visualevent,
	pattern = "*:*",
	callback = function()
		vim.api.nvim_set_hl(0, "ModeColor", { bg = "#0d4f6b", fg = "#d3dbd6" })
		vim.api.nvim_set_hl(0, "roundtrans", { fg = "#0d4f6b" , bg="#535961"})
		vim.api.nvim_set_hl(0, "round2fg", { fg = "#0d4f6b" })
	end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
	group = visualevent,
	pattern = { "v*:*", "c*:*", "i*:*", "V*:*", ":*" },
	callback = function()
		vim.api.nvim_set_hl(0, "ModeColor", { bg = "#fab152", fg = "#0b2026" })
		vim.api.nvim_set_hl(0, "roundtrans", { fg = "#fab152" , bg="#535961"})
		vim.api.nvim_set_hl(0, "round2fg", { fg = "#fab152" })
	end,
})

local function modified()
    if vim.api.nvim_buf_get_option(0, "modified") == true then
		return ' '
    end
    return ' '
end

local function Error()
	cnt=#vim.diagnostic.get(0,{severity=vim.diagnostic.severity.ERROR})
	if cnt>0 then
		return ' ' .. cnt
	else
		return ''
	end
end

local function Warning()
	cnt=#vim.diagnostic.get(0,{severity=vim.diagnostic.severity.WARN})
	if cnt>0 then
		return ' ' .. cnt
	else
		return ''
	end
end

local function Good()
	cnt=#vim.diagnostic.get(0,{severity=vim.diagnostic.severity.ERROR})+#vim.diagnostic.get(0,{severity=vim.diagnostic.severity.WARN})
	if cnt==0 then
		return ' '
	else
		return ''
	end
end

function statusline()
    return table.concat{
		"  %#round2fg#%#ModeColor#%{mode()}%#roundtrans#",
		"%#icon# %{WebDevIconsGetFileTypeSymbol()} %#global#",
		"%t %#modify#", modified(), "%r%#roundfg#%#Normal#",
		"%=%#round2fg#%#ModeColor#%l/%L%#roundtrans# %#global#",
		"%#good#" .. Good() .. "%#err#" .. Error() .. "%#warn#" .. Warning(),
		"%#Normal#%#roundfg#  "
	}
end

vim.opt.statusline = "%{%v:lua.statusline()%}"
