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

-- debug mapping
-- F5
-- map("n", "ff", "<Plug>VimspectorContinue", { desc = "When debugging, continue. Otherwise start debugging." })
-- F3
-- map("n", "ff", "<Plug>VimspectorStop", { desc = "Stop debugging." })
-- F4
map("n", "<F2>", "<Plug>VimspectorRestart", { desc = "Restart debugging with the same configuration." })
-- F6
-- map("n", "ff", "<Plug>VimspectorPause", { desc = "Pause debuggee." })
-- F9
map("n", "<F3>", "<Plug>VimspectorToggleBreakpoint", { desc = "Toggle line breakpoint on the current line." })
-- <leader>F9
-- map("n", "ff", "<Plug>VimspectorToggleConditionalBreakpoint", { desc = "Toggle conditional line breakpoint or logpoint on the current line." })
-- F8
-- map("n", "ff", "<Plug>VimspectorAddFunctionBreakpoint", { desc = "Add a function breakpoint for the expression under cursor" })
-- <leader>F8
-- map("n", "ff", "<Plug>VimspectorRunToCursor", { desc = "Run to Cursor" })
-- F10
map("n", "F4", "<Plug>VimspectorStepOver", { desc = "Step Over" })
-- F11
-- map("n", "ff", "<Plug>VimspectorStepInto", { desc = "Step Into" })
-- F12
-- map("n", "ff", "<Plug>VimspectorStepOut", { desc = "Step out of current function scope" })
--
--
