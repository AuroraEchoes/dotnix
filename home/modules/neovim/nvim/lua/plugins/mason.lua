local plugin = { "williamboman/mason.nvim" }
plugin.opts = {
	ensure_installed = {
		"clangd",
		"codelldb"
	}
}
return plugin
