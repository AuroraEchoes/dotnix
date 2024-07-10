local plugin = { "folke/trouble.nvim" }
plugin.dependencies = "nvim-tree/nvim-web-devicons"
plugin.cmd = "Trouble"
plugin.keys = {
	{
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    }
}
plugin.opts = {}
return plugin
