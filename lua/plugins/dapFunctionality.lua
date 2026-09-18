return {
  {
    "mfussenegger/nvim-dap",
    enabled = true,
    cond = true,
    branch = "master",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio", -- Strict requirement for nvim-dap-ui
    },
    lazy = true,
    event = "VeryLazy",
    keys = {
      { "<F5>", function() require("dap").continue() end, desc = "Debug: Start/Continue" },
      { "<F10>", function() require("dap").step_over() end, desc = "Debug: Step Over" },
      { "<F11>", function() require("dap").step_into() end, desc = "Debug: Step Into" },
      { "<F12>", function() require("dap").step_out() end, desc = "Debug: Step Out" },
      { "<leader>b", function() require("dap").toggle_breakpoint() end, desc = "Debug: Toggle Breakpoint" },
      { "<leader>B", function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end, desc = "Debug: Set Conditional Breakpoint" },
      { "<leader>du", function() require("dapui").toggle() end, desc = "Debug: Toggle UI" },
    },
    opts = {},
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      -- Initialize inline variable text
      require("nvim-dap-virtual-text").setup({})

      -- Initialize UI elements
      dapui.setup()

      -- Automatically open/close DAP UI when debugging starts/stops
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
}
