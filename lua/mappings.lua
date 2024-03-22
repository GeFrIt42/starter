require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- " mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)
-- " for normal mode - the word under the cursor
-- nmap <Leader>di <Plug>VimspectorBalloonEval
map("n", "ff", "<Plug>VimspectorBalloonEval", { desc = "VimspectorBalloonEval in normal mode" })
-- " for visual mode, the visually selected text
-- xmap <Leader>di <Plug>VimspectorBalloonEval

-- extra useful mappings
-- nmap <LocalLeader><F11> <Plug>VimspectorUpFrame
-- nmap <LocalLeader><F12> <Plug>VimspectorDownFrame
-- nmap <LocalLeader>B     <Plug>VimspectorBreakpoints
-- nmap <LocalLeader>D     <Plug>VimspectorDisassemble
