return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("custom.colorscheme")
		end,
		init = function()
			-- vim.cmd.colorscheme("rose-pine")
			-- vim.cmd.hi("Comment gui=none")
			-- vim.cmd.hi("NonText guifg=bg")
		end,
	},
}
