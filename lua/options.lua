require "nvchad.options"

-- add yours here!
local opt = vim.opt
local o = vim.o
local g = vim.g

o.mouse = ""
opt.list = true -- shot traling characters
vim.api.nvim_set_option_value("colorcolumn", "80", {})
opt.relativenumber = true
g["loaded_python3_provider"] = nil
