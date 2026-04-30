return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count
    local lualine_kanagawa = require("lualine.themes.kanagawa")

    local new_colors = {
      blue = "#658594",
      green = "#76946A",
      violet = "#957FB8",
      yellow = "#DCA561",
      black = "#000000",
    }

    lualine_kanagawa.normal.a.bg = new_colors.blue
    lualine_kanagawa.insert.a.bg = new_colors.green
    lualine_kanagawa.visual.a.bg = new_colors.violet
    lualine_kanagawa.command = {
      a = {
        gui = "bold",
        bg = new_colors.yellow,
        fg = new_colors.black,
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = lualine_kanagawa,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
        },
        lualine_c = {
          {
            'filename',
            file_status = true,
            newfile_status = false,
            path = 3, -- 0=name only, 1=relative, 2=absolute, 3=~-tilde, 4=parent+name
            shorting_target = 40,
            symbols = { modified = '[+]', readonly = '[-]', unnamed = '[No Name]' }
          }
        },
      },
    })
  end,
}
