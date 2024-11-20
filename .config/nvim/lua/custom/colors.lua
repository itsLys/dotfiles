require("rose-pine").setup({
	palette = {
		moon = {
			base = "#181b25",
			surface = "#1e222e",
			overlay = "#282d3e",
			gold = "#d1d4e1",
		},
	},
	highlight_groups = {
		-- Visual = { bg = "overlay", fg = "gold" },
		WhichKeyBorder = { fg = "pine" },
		WhichKeyGroup = { fg = "pine" },
		WhichKey = { fg = "pine" },
		String = { fg = "#68aeca" },
		["@keyword.import"] = { fg = "rose" },
		["@type"] = { fg = "rose" },
		["@string.escape"] = { fg = "iris" },
	},
})

vim.cmd.colorscheme("rose-pine-moon")
vim.cmd.hi("@type gui=bold")
vim.cmd.hi("Visual gui=bold")
vim.cmd.hi("Comment gui=none")
vim.cmd.hi("NonText guifg=bg")
vim.cmd.hi("@parameter gui=bold")
vim.cmd.hi("@keyword.import gui=bold")

