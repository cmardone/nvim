return {
	"rmagatti/auto-session",
	lazy = false,
	---enables autocomplete for opts
	---@module "auto-session"
	---@type AutoSession.Config
	opts = {
		suppressed_dirs = { "~/", "~/projects", "~/Downloads", "/" },
		session_lens = {
			buftypes_to_ignore = { "terminal", "nofile" },
			load_on_setup = true, -- Initialize on startup (requires Telescope)
			theme_conf = { -- Pass through for Telescope theme options
				border = true,
			},
			previewer = false, -- File preview for session picker
		},
	},
	keys = {
		{ "<leader>ss", "<cmd>SessionSearch<CR>", desc = "Search session" }
	},
}
