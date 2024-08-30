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

-- dap key mappings

-- complete cmp.nvim key mapping
-- scrool up down docs
-- c space triigger autocomletion

-- lsp key mapping
-- Configure Linting, Formatting, and Autocompletion in Neovim
-- https://www.youtube.com/watch?v=lpQMeFph1RE
-- https://www.youtube.com/watch?v=y1WWOaLCNyI
-- https://vonheikemen.github.io/devlog/tools/neovim-lsp-client-guide/
    -- Trigger code completion
    -- bufmap('i', '<C-Space>', '<C-x><C-o>')

    -- Display documentation of the symbol under the cursor
    -- bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')

    -- Jump to the definition
    -- bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')

    -- Jump to declaration
    -- bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')

    -- Lists all the implementations for the symbol under the cursor
    -- bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')

    -- Jumps to the definition of the type symbol
    -- bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')

    -- Lists all the references 
    -- bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')

    -- Displays a function's signature information
    -- bufmap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')

    -- Renames all references to the symbol under the cursor
    -- bufmap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')

    -- Format current file
    -- bufmap('n', '<F3>', '<cmd>lua vim.lsp.buf.format()<cr>')

    -- Selects a code action available at the current cursor position
    -- bufmap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')

-- Vimspector keys mapping
-- " mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)
-- " for normal mode - the word under the cursor
-- nmap <Leader>di <Plug>VimspectorBalloonEval
-- map("n", "ff", "<Plug>VimspectorBalloonEval", { desc = "VimspectorBalloonEval in normal mode" })
-- " for visual mode, the visually selected text
-- xmap <Leader>di <Plug>VimspectorBalloonEval

-- extra useful mappings
-- nmap <LocalLeader><F11> <Plug>VimspectorUpFrame
-- nmap <LocalLeader><F12> <Plug>VimspectorDownFrame
-- nmap <LocalLeader>B     <Plug>VimspectorBreakpoints
-- nmap <LocalLeader>D     <Plug>VimspectorDisassemble

-- debug mapping
-- F5
-- map("n", "<F7>", "<Plug>VimspectorContinue", { desc = "When debugging, continue. Otherwise start debugging." })
-- F3
-- map("n", "<F8>", "<Plug>VimspectorStop", { desc = "Stop debugging." })
-- F4
-- map("n", "<F9>", "<Plug>VimspectorRestart", { desc = "Restart debugging with the same configuration." })
-- F6
-- map("n", "ff", "<Plug>VimspectorPause", { desc = "Pause debuggee." })
-- F9
-- map("n", "<F5>", "<Plug>VimspectorToggleBreakpoint", { desc = "Toggle line breakpoint on the current line." })
-- <leader>F9
-- map("n", "<F7>", "<Plug>VimspectorToggleConditionalBreakpoint", { desc = "Toggle conditional line breakpoint or logpoint on the current line." })
-- F8
-- map("n", "<F6>", "<Plug>VimspectorAddFunctionBreakpoint", { desc = "Add a function breakpoint for the expression under cursor" })
-- <leader>F8
-- map("n", "ff", "<Plug>VimspectorRunToCursor", { desc = "Run to Cursor" })
-- F10
-- map("n", "<F2>", "<Plug>VimspectorStepOver", { desc = "Step Over" })
-- F11
-- map("n", "<F3>", "<Plug>VimspectorStepInto", { desc = "Step Into" })
-- F12
-- map("n", "<F4>", "<Plug>VimspectorStepOut", { desc = "Step out of current function scope" })
--
--
