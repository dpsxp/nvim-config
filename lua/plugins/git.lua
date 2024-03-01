return {
  {
    "f-person/git-blame.nvim",
    opts = {
      enabled = false,
    },
    keys = {
      { "<leader>g", "<cmd>GitBlameToggle<CR>", desc = "Enable Git blame lines" },
    }
  }
}
