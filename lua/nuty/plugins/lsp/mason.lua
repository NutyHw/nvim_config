return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim"
	},
	config = function()
		local mason = require("mason")
		local mason_lsp = require("mason-lspconfig")
		mason.setup({
			ui = {
				border = "none",
				icons = {
					package_installed = "◍",
					package_pending = "◍",
					package_uninstalled = "◍",
				},
			}
		})
		mason_lsp.setup({
			ensure_installed = require("nuty.plugins.lsp.function.constant"),
			automatic_installation = true
		})
	end
}
