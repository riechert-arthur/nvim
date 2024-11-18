local config = function()
	require("mason").setup()
  require("mason-lspconfig").setup({
    ensure_installed = {
      "lua_ls",
      "tsserver",
    }
  })
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
