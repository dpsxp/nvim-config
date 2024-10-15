return {
  {
    "folke/tokyonight.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd([[colorscheme tokyonight-moon]])
    end,
  },
  {
    "joshdick/onedark.vim",
    lazy = false,
    priority = 1000,
    -- config = function()
    --   vim.cmd([[colorscheme onedark]])
    -- end,
  }
}
