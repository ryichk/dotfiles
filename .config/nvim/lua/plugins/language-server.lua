return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			ruby_lsp = {
				enabled = lsp == "ruby_lsp",
			},
			rubocop = {
				enabled = formatter == "rubocop"
			},
		},
	},
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
}
