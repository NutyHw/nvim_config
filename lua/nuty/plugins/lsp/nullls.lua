return {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "mason.nvim" },
	config = function()
    local handler = require("nuty.plugins.lsp.function.handlers")
    handler.setup()
		local nls = require("null-ls")
		local formatting = nls.builtins.formatting
		local diagnosis = nls.builtins.diagnostics
		nls.setup({
			debug = false,
			sources = {
				-- formatting.prettier_d_slim.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
				-- formatting.black.with({ extra_args = { "--fast" } }),
				formatting.terraform_fmt,
				diagnosis.terraform_validate
			},
		})
	end,
}
