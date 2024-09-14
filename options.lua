require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

vim.cmd "set nowrap"
vim.cmd "set relativenumber"

vim.cmd [[
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter  * if &nu | set nornu | endif
  autocmd BufWritePre * lua vim.lsp.buf.format()
augroup END
]]

-- vim.o.cul = "both"

-- Configurar PowerShell como la shell predeterminada
<<<<<<< HEAD
-- vim.opt.shell = "pwsh"
-- vim.opt.shellcmdflag = "-Command"
-- vim.opt.shellxquote = ""
=======
vim.opt.shell = "pwsh"
vim.opt.shellcmdflag = "-Command"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""
>>>>>>> c361737a8b3d5f1dcfdd08fc2e9f12f22f65e2a1

-- Cargar configuraciones específicas del proyecto si existen
vim.lsp.inlay_hint.enable(true)
