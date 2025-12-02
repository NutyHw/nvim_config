return {
	"nvim-treesitter/nvim-treesitter",
	version = false,
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	cmd = { "TSUpdateSync" },
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", mode="n" },
	},
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {  "python", "terraform", "dockerfile", "bash", "lua" }, -- one of "all" or a list of languages
			highlight = {
				enable = true -- false will disable the whole extension
			},
			autopairs = {
				enable = true
			},
			indent = { enable = true }
		})
	end
}
