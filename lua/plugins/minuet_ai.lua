return {
  {
    "milanglacier/minuet-ai.nvim",
    enabled = true,
    cond = true,
    branch = "main",
    dependencies = {},
    lazy = true,
    keys = {
      { "<A-A>", function() print "Accept all" end },
      { "<A-a>", function() print "Accept line" end },
      { "<A-z>", function() print "Accept lines" end },
      { "<A-[>", function() print "Next completion" end },
      { "<A-]>", function() print "Prev completion" end },
      { "<A-e>", function() print "Miss completion" end },
    },
    opts = {
      virtualtext = {
        auto_trigger_ft = { "*" },
        keymap = {
          accept = "<A-A>",
          accept_line = "<A-a>",
          accept_n_lines = "<A-z>",
          prev = "<A-[>",
          next = "<A-]>",
          dismiss = "<A-e>",
        },
        show_on_completition_menu = true,
      },
      provider = "openai_compatible",
      provider_options = {
        openai_compatible = {
          api_key = "NANOGPT_API_KEY",
          end_point = "https://api.nano-gpt.com/api/v1/chat/completions",
          name = "NanoGPT",
          model = "Meta-Llama-3-1-8B-Instruct-FP8",
          stream = true,
          optional = {
            max_tokens = 1024,
            top_p = 0.9,
          },
        },
      },
    },
  }
}
