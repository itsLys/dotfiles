return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			columns = { "icon" },
			prompt_save_on_select_new_entry = false,
			keymaps = {
				["<C-h>"] = false,
				["<C-l>"] = false,
				["<leader><C-s>"] = {
					"actions.select",
					opts = { vertical = true },
					desc = "Open the entry in a vertical split",
				},
				["<leader><C-h>"] = {
					"actions.select",
					opts = { horizontal = true },
					desc = "Open the entry in a horizontal split",
				},
				["<leader><C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
			},
			view_options = {
				show_hidden = true,
			},
		})
		-- Open Explorer
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open Explorer" })
		vim.keymap.set("n", "<leader>--", require("oil").toggle_float)
	end,
}
