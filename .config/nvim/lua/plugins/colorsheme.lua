return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				palette = {
					main = {
						base = "#00060A",
						surface = "#000B12",
						overlay = "#000F1A",
						gold = "#EB6F92",
					},
				},
			})
		end,
		init = function()
			vim.cmd.colorscheme("rose-pine")
			vim.cmd.hi("Comment gui=none")
			vim.cmd.hi("NonText guifg=bg")
		end,
	},
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "night",
				on_colors = function(c)
					c.bg = "#00060A"
					c.bg_dark = "#000B12"
					c.bg_float = "#000F1A"
					c.bg_sidebar = "#000F1A"
					c.bg_highlight = "#000F1A"
					c.bg_popup = "#000F1A"
					c.bg_statusline = "#000F1A"
					c.bg_visual = "#202a46"
				end,
				on_highlights = function() end,
			})
		end,
	},
}
