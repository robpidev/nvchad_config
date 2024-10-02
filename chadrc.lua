-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :(
local highlights = require "highlights"

---@type ChadrcConfig
local M = {
  ui = {
    cmp = {
      icons_left = true,
      style = "default",
      format_colors = {
        tailwind = true,
      }
    }
  },
}

M.base46 = {
  theme = "ayu_dark",
  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

return M
