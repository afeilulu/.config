return {

  {
    "sainnhe/gruvbox-material",
    enabled = true,
    lazy = true,
    priority = 1000,
    opts = function()
      vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_foreground = "original"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_ui_contrast = "high"
      vim.g.gruvbox_material_float_style = "bright"
      vim.g.gruvbox_material_statusline_style = "mix" -- Options: "original", "material", "mix", "afterglow"
      vim.g.gruvbox_material_cursor = 'orange' -- Options: 'auto'`, `'red'`, `'orange'`, `'yellow'`, `'green'`,`'aqua'`, `'blue'`, `'purple'
      vim.g.gruvbox_material_transparent_background = "2"
      vim.g.gruvbox_material_better_performance = 1

      vim.cmd.colorscheme("gruvbox-material")

      -- 不高亮当前行，但是高亮行号，需要覆盖colortheme的CursorLineNr设置
      vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FF5C00", gui=bold })
      vim.cmd("set cursorline")
      vim.cmd("set cursorlineopt=number")

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
