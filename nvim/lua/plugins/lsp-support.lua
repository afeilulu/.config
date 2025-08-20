return {
  {
    "saghen/blink.cmp",
    version = "*",
    event = { "InsertEnter", "CmdlineEnter" },
    opts = {
      enabled = function()
        return not vim.tbl_contains({ "prompt", "lsp:rename", "nofile" }, vim.bo.buftype) and vim.b.completion ~= false
      end,
      keymap = {
        preset = "enter",
        ["<Tab>"] = {
          "select_next",
          "snippet_forward",
          function(cmp)
            local function has_words_before()
              local line, col = (unpack or table.unpack)(vim.api.nvim_win_get_cursor(0))
              return col ~= 0
                and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
            end
            if has_words_before() or vim.api.nvim_get_mode().mode == "c" then
              return cmp.show()
            end
          end,
          "fallback",
        },
        ["<S-Tab>"] = {
          "select_prev",
          "snippet_backward",
          function(cmp)
            if vim.api.nvim_get_mode().mode == "c" then
              return cmp.show()
            end
          end,
          "fallback",
        },
      },
      cmdline = {
        keymap = {
          preset = "default",
          ["<Tab>"] = { "select_next", "fallback" },
          ["<S-Tab>"] = { "select_prev", "fallback" },
        },
        completion = {
          list = {
            selection = {
              preselect = false,
              auto_insert = true,
            },
          },
          menu = { auto_show = true },
        },
      },
      appearance = {
        use_nvim_cmp_as_default = false,
        nerd_font_variant = "mono",
      },
      sources = {
        default = { "lsp", "path", "buffer" },
      },
      signature = { enabled = true },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },
        list = {
          selection = {
            preselect = true,
            auto_insert = false,
          },
        },
        menu = {
          draw = {
            columns = {
              { "label", "label_description", gap = 1 },
              { "kind_icon" },
            },
          },
        },
      },
    },
    opts_extend = { "sources.default" },
  },

  {
    "stevearc/conform.nvim",
    cmd = "ConformInfo",
    opts = {
      formatters_by_ft = {
        c = { "clang-format" },
        cpp = { "clang-format" },
        lua = { "stylua" },
        python = { "ruff_format" },
        rust = { "rustfmt", lsp_format = "fallback" },
        go = { "goimports", "golines", "gofmt" },
        kotlin = { "ktlint" },
        ["*"] = { "codespell" },
      },
    },
    keys = {
      {
        "<leader>fm",
        function()
          require("conform").format({ aync = true, lsp_fallback = true })
        end,
        mode = { "n", "v" },
      },
    },
    -- Set this to change the default values when calling conform.format()
    -- This will also affect the default values for format_on_save/format_after_save
    default_format_opts = {
      lsp_format = "fallback",
    },
    -- If this is set, Conform will run the formatter on save.
    -- It will pass the table to conform.format().
    -- This can also be a function that returns the table.
    format_on_save = {
      -- I recommend these options. See :help conform.format for details.
      lsp_format = "fallback",
      timeout_ms = 500,
    },
  },

  {
    "folke/trouble.nvim",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
    },
    cmd = { "Trouble", "TroubleToggle" },
    opts = {},
    keys = {
      { "gr", "<CMD>Trouble lsp_references toggle<CR>" },
      { "gd", "<CMD>Trouble lsp_definitions toggle<CR>" },
      { "gi", "<CMD>Trouble lsp_implementations toggle<CR>" },
      { "<leader>xx", "<CMD>Trouble diagnostics toggle<CR>" },
      { "<leader>o", "<CMD>Trouble symbols toggle win.position=right<CR>" },
    },
  },

}
