return {
  {
    "sainnhe/gruvbox-material",
    enabled = true,
    lazy = false,
    priority = 1000,
    opts = function()
      vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_ui_contrast = "high"
      vim.g.gruvbox_material_float_style = "bright"
      vim.g.gruvbox_material_statusline_style = "material" -- Options: "original", "material", "mix", "afterglow"
      vim.g.gruvbox_material_cursor = "auto"

      -- vim.g.gruvbox_material_colors_override = { bg0 = '#16181A' } -- #0e1010
      vim.g.gruvbox_material_better_performance = 1

      vim.cmd.colorscheme("gruvbox-material")

    end,
  },

  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    init = function()
      require("bufferline").setup({
        options = {
          numbers = "ordinal",
        },
      })
    end,
    keys = {
      { "<leader>1", "<CMD>BufferLineGoToBuffer 1<CR>" },
      { "<leader>2", "<CMD>BufferLineGoToBuffer 2<CR>" },
      { "<leader>3", "<CMD>BufferLineGoToBuffer 3<CR>" },
      { "<leader>4", "<CMD>BufferLineGoToBuffer 4<CR>" },
      { "<leader>5", "<CMD>BufferLineGoToBuffer 5<CR>" },
      { "<leader>6", "<CMD>BufferLineGoToBuffer 6<CR>" },
      { "<leader>7", "<CMD>BufferLineGoToBuffer 7<CR>" },
      { "<leader>8", "<CMD>BufferLineGoToBuffer 8<CR>" },
      { "<leader>9", "<CMD>BufferLineGoToBuffer 9<CR>" },
      { "<leader>d", "<CMD>bdelete<CR>" },
    },
  },

  {
    "tiagovla/scope.nvim",
    init = function()
      require("scope").setup({})
    end,
    keys = {
      { "<M-n>", "<CMD>tabnext<CR>" },
      { "<M-p>", "<CMD>tabprevious<CR>" },
    },
  },

  {
	  'nvim-lualine/lualine.nvim',
	  dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = "VeryLazy",
    opts = {
      theme = 'gruvbox-material',
      globalstatus = true,
    }
  },

  { "nvzone/showkeys",cmd = "ShowkeysToggle" }
}
