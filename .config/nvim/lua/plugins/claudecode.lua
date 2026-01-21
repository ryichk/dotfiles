return {
	"coder/claudecode.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"folke/snacks.nvim",
	},
	config = function()
		require("claudecode").setup({
			terminal_cmd = nil,
			provider = "snacks",
			split_side = "right",
			split_width_percentage = 0.30,
			auto_close = false,
			focus_after_send = false,
			track_selection = true,
			git_repo_cwd = true,
		})
	end,
}
