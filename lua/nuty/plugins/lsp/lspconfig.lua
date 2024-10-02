return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
    "RRethy/vim-illuminate"
	},
	config = function()
		local lspconfig = require("lspconfig")
		local lsp = require("nuty.plugins.lsp.function.constant")

		local handler = require("nuty.plugins.lsp.function.handlers")

		local opts = {}
		for _, server in pairs(lsp) do
			opts = {
				on_attach = handler.on_attach,
				capabilities = handler.capabilities,
			}
      if server == "yamlls" then
        lspconfig[server].setup({
          settings = {
            yaml = {
              schemas = { kubernetes = "globPattern" },
            }
          }
        })
      else
        lspconfig[server].setup(opts)
      end

			-- local require_ok, conf_opts = pcall(require, "nuty.plugins.lsp.setting" .. server )
			-- if require_ok then
		 --        	opts = vim.tbl_deep_extend("force", conf_opts, opts)
			-- end

		end
	end
}
