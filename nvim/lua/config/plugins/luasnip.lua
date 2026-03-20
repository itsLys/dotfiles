return {
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
		config = function ()
			require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })
			require("luasnip.loaders.from_vscode").lazy_load()
			local luasnip = require("luasnip")
			vim.keymap.set("i", "<Tab>", function()
				if luasnip.expand_or_jumpable() then
					return "<Plug>luasnip-expand-or-jump"
				else
					return "<Tab>"
				end
			end, { expr = true, silent = true })

			-- Jump to previous placeholder
			vim.keymap.set("i", "<S-Tab>", function()
				if luasnip.jumpable(-1) then
					return "<Plug>luasnip-jump-prev"
				else
					return "<S-Tab>"
				end
			end, { expr = true, silent = true })

			-- Optional: same for select mode
			vim.keymap.set("s", "<Tab>", "<Plug>luasnip-expand-or-jump", { silent = true })
			vim.keymap.set("s", "<S-Tab>", "<Plug>luasnip-jump-prev", { silent = true })
		end
	}
}
