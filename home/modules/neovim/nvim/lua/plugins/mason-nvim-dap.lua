local plugin = { "jay-babu/mason-nvim-dap.nvim" }
plugin.dependencies = {
	"williamboman/mason.nvim",
	"mfussenegger/nvim-dap"
}
plugin.opts = {
	handlers = {},
	ensure_installed = {
		"codelldb"
	}
}
plugin.event = "VeryLazy"
return plugin
