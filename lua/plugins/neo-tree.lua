return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
      -- fill any relevant options here
    },
    config = function()
      vim.keymap.set("n", "<leader>n", ":Neotree filesystem toggle right<CR>", { desc = "Toggle Neo tree" })
      vim.keymap.set("n", "<leader>nf", ":Neotree focus<CR>", { desc = "Focus Neo tree" })
    end,
  },
}
