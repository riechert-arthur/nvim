local event = {
	"BufReadPre",
	"BufNewFile",
}

return {
	"neovim/nvim-lspconfig",
	config = lspconfig_config,
}
