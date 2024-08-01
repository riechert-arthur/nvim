local config = function()
	require("nvim-treesitter.configs").setup({
		ensure_installed = { 
			"c",
			"lua",
			"html",
			"javascript",
			"vim",
			"vimdoc",
			"typescript",
			"xml",
			"sql",
			"json",
			"java",
			"python",
			"tsx",
		},
		sync_install = false,
		highlight = { enable = true },
		indent = { enable = true },
		autopairs = { enable = true },
	})
end

return {{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = config,
}}
