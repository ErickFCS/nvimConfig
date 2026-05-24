return {
  {
    "zbirenbaum/copilot.lua",
    enabled = true,
    cond = true,
    branch = "master",
    dependencies = {},
    lazy = true,
    keys = {
      { "<leader>c", "<cmd>echo 'copilot started'<CR>", desc = "Starts copilor" },
    },
    cmd = "Copilot",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<C-l>",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = {
        enabled = false,
      },
    }
  }
}
