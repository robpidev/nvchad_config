-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

local highlights = require "highlights"

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "ayu_dark",
  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,

  cmp = {
    border_color = "dark_purple",
    style = "default",
  },

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
  -- term = {
  --   terminals = {
  --     shell = "pwsh",
  --   },
  -- },
}

return M
