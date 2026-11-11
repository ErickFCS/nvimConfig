return {
  {
    "olimorris/codecompanion.nvim",
    enabled = true,
    cond = true,
    branch = "main",
    dependencies = {
      "HakonHarnes/img-clip.nvim",
      "OXY2DEV/markview.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    lazy = true,
    keys = {},
    opts = {
      adapters = {
        http = {
          nano_gpt = function()
            return require("codecompanion.adapters").extend("openai_compatible", {
              formatted_name = "NanoGPT",
              env = {
                url = "https://api.nano-gpt.com",
                api_key = "NANOGPT_API_KEY",
                chat_url = "/api/v1/chat/completions",
                models_endpoint = "/api/v1/models",
              },
              schema = {
                model = {
                  default = "z-ai/glm-5.3-flash",
                },
              },
            })
          end,
        },
      },
      interactions = {
        chat = {
          adapter = "nano_gpt",
        },
        inline = {
          adapter = {
            name = "nano_gpt",
            model = "z-ai/glm-5.3-flash",
          },
        }
      },
    },
  },
  {
    "HakonHarnes/img-clip.nvim",
    enabled = true,
    cond = true,
    branch = "main",
    dependencies = {},
    lazy = true,
    keys = {},
    opts = {
      filetypes = {
        codecompanion = {
          prompt_for_file_name = false,
          template = "[Image]($FILE_PATH)",
          use_absolute_path = true,
        },
      },
    },
  },
  {
    "OXY2DEV/markview.nvim",
    enabled = true,
    cond = true,
    branch = "main",
    dependencies = {},
    lazy = false,
    keys = {
      { "<leader>mh", "<CMD>Markview HybridToggle<CR>" },
      { "<leader>mp", "<CMD>Markview<CR>" },
      { "<leader>ms", "<CMD>Markview splitToggle<CR>" },
    },
    opts = {
      html = { enable = true },
      latex = { enable = true },
      markdown = { enable = true },
      markdown_inline = { enable = true },
      typst = { enable = true },
      yaml = { enable = true },
      preview = {
        filetypes = { "markdown", "codecompanion", "codecompanion_chat_input" },
      },
    },
  },
}
