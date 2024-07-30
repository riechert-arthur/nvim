local config = function()
	require("mason").setup()
end

local dependencies = {
	"williamboman/mason-lspconfig.nvim",
}

return {
	{
		"williamboman/mason.nvim",
		config = config,
		dependencies = dependencies,
	},	
}
