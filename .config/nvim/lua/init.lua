vim.opt.clipboard = "unnamedplus"
-- 全角スペース可視化
vim.cmd[[
  hi DoubleByteSpace term=underline ctermbg=blue guibg=darkgray
  match DoubleByteSpace /　/
]]
-- 空白・タブ可視化
vim.wo.list = true
vim.wo.listchars = 'tab:»-,trail:-,extends:»,precedes:«,nbsp:%'

require("config.lazy")

local function my_on_attach(bufnr)
	local api = require "nvim-tree.api"

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	api.config.mappings.default_on_attach(bufnr)

	vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
end
require("nvim-tree").setup {
	on_attach = my_on_attach,
}

require("mason").setup()
require("mason-lspconfig").setup()
-- masonでインストールした各LanguageServerのsetupを自動で呼び出す
require("mason-lspconfig").setup_handlers({
	function (server_name)
		require("lspconfig")[server_name].setup({})
	end,
})
-- LSから受け取ったエラーなどの診断情報を表示する
vim.diagnostic.config()
