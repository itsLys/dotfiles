local set = vim.keymap.set

-- Moving selection
set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Indent File
set("n", "<leader>=", "msHmt:%s/\\s\\+$//e<CR>gg=G'tzt`s", { desc = "Remove trailing blanks and indent file" })

-- Copying to clipboard
set("n", "<leader>y", '"+y')
set("v", "<leader>y", '"+y')
set("n", "<leader>Y", '"+Y')

-- Cutting to clipboard
set("n", "<leader>d", '"+d')
set("v", "<leader>d", '"+d')
set("n", "<leader>D", '"+D')

-- Pasting from clipboard
set("n", "<leader>p", '"+p')
set("v", "<leader>p", '"+p')
set("n", "<leader>P", '"+P')
set("v", "p", '"_dP')

-- Clear highlights on search

-- `:help hlsearch`
set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode
set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Disable arrow keys in normal mode
-- set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

set("n", "<leader><C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
set("n", "<leader><C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
set("n", "<leader><C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
set("n", "<leader><C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Resize splits
set("n", "<M-l>", "<C-w>5>", { desc = "Move focus to the upper window" })
set("n", "<M-h>", "<C-w>5<", { desc = "Move focus to the upper window" })
set("n", "<M-+>", "<C-w>+", { desc = "Move focus to the upper window" })
set("n", "<M-->", "<C-w>-", { desc = "Move focus to the upper window" })

-- Smooth scrolling
set(
	"n",
	"<C-D>",
	"<C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>",
	{ desc = "Move focus to the upper window" }
)
set(
	"n",
	"<C-U>",
	"<C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>",
	{ desc = "Move focus to the upper window" }
)
