local plugin = { "mfussenegger/nvim-dap" }
plugin.config = function(_, _)
	vim.keymap.set("n", "<leader>db", "<cmd> DapToggleBreakpoint <cr>")
	vim.keymap.set("n", "<leader>dr", "<cmd> DapContinue <cr>")
end
return plugin
