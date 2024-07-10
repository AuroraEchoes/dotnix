local plugin = { "folke/which-key.nvim" }
plugin.event = "VeryLazy"
plugin.init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
end
return plugin
