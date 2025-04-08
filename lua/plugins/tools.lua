return {
	{
		"folke/ts-comments.nvim",
		opts = {
			signs = true,
			sign_priority = 8,
			keywords = {
				FIX = { icon = " ", color = "error" },
				TODO = { icon = " ", color = "info" },
				HACK = { icon = " ", color = "warning" },
				WARN = { icon = " ", color = "warning" },
				PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" }, color = "hint" },
				NOTE = { icon = " ", color = "hint" },
				TEST = { icon = "⏲️ ", color = "#9fbb58" },
			},
		},
		event = "VeryLazy",
		enabled = vim.fn.has("nvim-0.10.0") == 1,
	},
	{
		"kylechui/nvim-surround",
		version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"windwp/nvim-ts-autotag",
		config = true,
	},
	{
		"norcalli/nvim-colorizer.lua",
		event = "VeryLazy",
		opts = {
			user_default_options = {
				css = true,
				mode = "background",
				tailwind = true,
			},
			buftypes = { "*", "!nofile", "!nowrite", "!help" },
		},
	},
}
