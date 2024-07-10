local plugin = {"nvim-treesitter/nvim-treesitter"}
plugin.opts = {
	highlight = {
		enable = true
	},
	indent = {
		enable = true
	},
	ensure_installed = {
		"rust",
		"cpp",
		"java"
	}
}
return plugin
