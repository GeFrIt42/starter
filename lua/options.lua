require "nvchad.options"

-- add yours here!

local o = vim.o
local g = vim.g
local opt = vim.opt

o.mouse = ""
opt.list = true -- shot traling characters
vim.api.nvim_set_option_value("colorcolumn", "160", {})
opt.relativenumber = true
g["loaded_python3_provider"] = nil

-- https://neovim.io/doc/user/spell.html
-- z=
vim.opt.spelllang = 'en_us'
vim.opt.spell = true


-- g["mkdp_browser"] = '/run/current-system/sw/bin/brave'
