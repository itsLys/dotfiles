require("oil").setup({
	columns = { { "icon", add_padding = false } },
	prompt_save_on_select_new_entry = false,
	keymaps = {
		["<C-h>"] = false,
		["<C-l>"] = false,
		["<C-s>"] = false,
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
	constrain_cursor = "editable",
	watch_for_changes = true,
	float = {
		padding = 8,
		max_width = 150,
		max_height = 100,
		border = "rounded",
		win_options = {
			winblend = 0,
		},
	},
})
-- Open Explorer
--
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open Explorer" })
vim.keymap.set("n", "<leader>--", require("oil").toggle_float)
