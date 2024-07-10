local plugin = { "VonHeikemen/lsp-zero.nvim", branch = "v3.x" }
plugin.dependencies = {
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/nvim-cmp",
	"L3MON4D3/LuaSnip",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim"
}

plugin.config = function()
	local lsp_zero = require("lsp-zero")

	lsp_zero.on_attach(function(client, bufnr)
		lsp_zero.default_keymaps({buffer = bufnr})

		vim.keymap.set("n", "<leader>ck", '<cmd>lua vim.lsp.buf.hover()<cr>', {buffer = bufnr})
		vim.keymap.set("n", "<leader>cr", '<cmd>lua vim.lsp.buf.rename()<cr>', {buffer = bufnr})
		vim.keymap.set("n", "<leader>cf", '<cmd>lua vim.lsp.buf.format()<cr>', {buffer = bufnr})
		vim.keymap.set("n", "<leader>ca", '<cmd>lua vim.lsp.buf.code_action()<cr>', {buffer = bufnr})
	end)

	local cmp = require("cmp")

	cmp.setup({
		mapping = {
			['<cr>'] = cmp.mapping.confirm({select = false}),
			['<C-e>'] = cmp.mapping.abort(),
		},
	})

	require("mason").setup({})
	require("mason-lspconfig").setup({
		ensure_installed = {
			"rust_analyzer",
			"jdtls",
			"pylsp",
			"clangd",
		},
		handlers = {
			function(server_name)
				require("lspconfig")[server_name].setup({})
			end,
		}
	})

end

return plugin
