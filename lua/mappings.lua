require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- disabled since conflict with default bindings
-- map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })

-- disabled since not usefull
-- map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- custum keymapping
map("n", "c", "\"_c", { desc = "avoid c to modify clipboard" })
map("n", "C", "\"_C", { desc = "avoid c to modify clipboard" })

-- Vimspector keys mapping
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
map("n", "<F7>", "<Plug>VimspectorContinue", { desc = "When debugging, continue. Otherwise start debugging." })
-- F3
map("n", "<F8>", "<Plug>VimspectorStop", { desc = "Stop debugging." })
-- F4
map("n", "<F9>", "<Plug>VimspectorRestart", { desc = "Restart debugging with the same configuration." })
-- F6
-- map("n", "ff", "<Plug>VimspectorPause", { desc = "Pause debuggee." })
-- F9
map("n", "<F5>", "<Plug>VimspectorToggleBreakpoint", { desc = "Toggle line breakpoint on the current line." })
-- <leader>F9
-- map("n", "<F7>", "<Plug>VimspectorToggleConditionalBreakpoint", { desc = "Toggle conditional line breakpoint or logpoint on the current line." })
-- F8
map("n", "<F6>", "<Plug>VimspectorAddFunctionBreakpoint", { desc = "Add a function breakpoint for the expression under cursor" })
-- <leader>F8
-- map("n", "ff", "<Plug>VimspectorRunToCursor", { desc = "Run to Cursor" })
-- F10
map("n", "<F2>", "<Plug>VimspectorStepOver", { desc = "Step Over" })
-- F11
map("n", "<F3>", "<Plug>VimspectorStepInto", { desc = "Step Into" })
-- F12
map("n", "<F4>", "<Plug>VimspectorStepOut", { desc = "Step out of current function scope" })
--
--
