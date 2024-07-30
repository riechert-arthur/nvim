local config = function()
	require("catppuccin").setup({
		flavour = "mocha",
		color_overrides = {
			mocha = {
				text = "#F4CDE9",
				subtext0 = "#C8A6BE",
				subtext1 = "#DEBAD4",
				overlay0 = "#866C7D",
				overlay1 = "#9C7F92",
				overlay2 = "#B293A8",
				surface0 = "#44313B",
				surface1 = "#5A4551",
				surfacd2 = "#705867",
				base = "#352939",
				mantle = "#211924",
				crust = "#1a1016",
			},
		},
	})
	vim.cmd("colorscheme catppuccin")
end

return {{
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = config,
}}
