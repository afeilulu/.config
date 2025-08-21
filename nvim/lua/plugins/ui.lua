return {
  {
    "sainnhe/gruvbox-material",
    enabled = true,
    lazy = true,
    priority = 1000,
    opts = function()
      vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_ui_contrast = "high"
      vim.g.gruvbox_material_float_style = "bright"
      vim.g.gruvbox_material_statusline_style = "mix" -- Options: "original", "material", "mix", "afterglow"
      vim.g.gruvbox_material_cursor = "auto"
      vim.g.gruvbox_material_transparent_background = "2"
      vim.g.gruvbox_material_better_performance = 1

      vim.cmd.colorscheme("gruvbox-material")

    end,
  },

  {
	  'nvim-lualine/lualine.nvim',
	  dependencies = { "nvim-tree/nvim-web-devicons","sainnhe/gruvbox-material" },
    lazy = true,
    event = "VeryLazy",
    opts = {
      theme = 'gruvbox_material',
      globalstatus = false,
    }
  },

  { "nvzone/showkeys",cmd = "ShowkeysToggle" },

}
