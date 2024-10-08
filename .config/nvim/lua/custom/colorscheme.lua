require("rose-pine").setup({
	palette = {
		main = {
			base = "#00060A",
			surface = "#000B12",
			overlay = "#001524",
			gold = "#EB6F92",
		},
	},
	highlight_groups = {
		Visual = { bg = "#011627", fg = "gold" },
		WhichKeyBorder = { fg = "pine" },
		WhichKeyGroup = { fg = "pine" },
		WhichKey = { fg = "pine" },
		String = { fg = "#3e8fb0" },
		["@keyword.import"] = { fg = "rose" },
	},
})

vim.cmd.colorscheme("rose-pine")
vim.cmd.hi("Visual gui=bold")
vim.cmd.hi("Comment gui=none")
vim.cmd.hi("NonText guifg=bg")
vim.cmd.hi("@parameter gui=bold")
vim.cmd.hi("@keyword.import gui=bold")
