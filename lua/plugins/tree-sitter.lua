return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "lua", "javascript", "json", "typescript", "sql", "c_sharp" },
    highlight = { enable = true },
    indent = { enable = true },
  },
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
}
