
-- how to read file from lua: https://www.gammon.com.au/scripts/doc.php?lua=io.open
-- :source % : source current file
-- :messages : show logs
local fd_os_release = assert(io.open("/etc/os-release"), "r")
local s_os_release = fd_os_release:read("*a")
fd_os_release:close()
s_os_release = s_os_release:lower()
local is_nixos = s_os_release:match("nixos")

-- disable installation of dependency because nixos dont use the same lib path standard
-- nix-ld solution since it gives priority to the rpath, it could breadk the system
-- https://github.com/Mic92/nix-ld
-- lsp need to be installed in the nix config
local l_ensure_installed = {}
if is_nixos == nil then
  print("is not nixos")
  -- this list need to be sync with lua/configs/lspconfig.lua
   l_ensure_installed = {
    "lua-language-server",
    "stylua",
    -- "prettier", -- ToDo: prettierd is available in nixos, ToDo check how to use this
    "marksman",
    "bash-language-server",
    "clangd",
    "clang-format",
  }
end

local plugins = {
  -- inteligent code highlight
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "css",
        "ini",
        "lua",
        "make",
        "markdown_inline",
        "nix",
        "python",
        "ruby",
        "vim",
        "make",
        "hcl",
      },
    },
  },

  -- mason installs executables needed by lspconfig
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = l_ensure_installed,
    },
  },

  -- In order to modify the `lspconfig` configuration:
  {
  "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
   end,
  },

  -- inteligent code highlight
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        vimgrep_arguments = {
          "rg",
          "-L",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden", -- live grep also dotfiles
          "-g", "!.git/", -- ignore .git/
          "--ignore-case"
        },
        file_ignore_patterns = { ".git/" },
      },
      pickers = {
        find_files = {
          hidden = true,
          no_ignore = true, -- false == consider .gitignore .ignore
                            -- true  == show all files
          follow = true, -- find also symlinks
        },
      },
    },
  },

  -- debugger with dissasembly
  {
    'puremourning/vimspector',
    -- lazy = false,
  },

  -- ToDo: figureout how to integrate this
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  --   ft = { "markdown" },
  --   build = function() vim.fn["mkdp#util#install"]() end,
  -- },
}
return plugins
