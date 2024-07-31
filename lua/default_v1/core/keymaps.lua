local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

vim.g.mapleader = " "

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", options)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", options)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", options)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", options)

local luasnip = require("luasnip")
map = vim.keymap.set

map("i", "<C-k>", function() luasnip.expand() end, { silent = true })
map({ "i", "s" }, "<C-l>", function() luasnip.jump(1) end, { silent = true })
map({ "i", "s" }, "<C-j>", function() luasnip.jump(-1) end, { silent = true })
map({ "i", "s" }, "<C-e>", function()
	if luasnip.choice_active() then
		luasnip.change_choice(1)
	end
end, { silent = true })

return {}
