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
        "html",
        "ini",
        "lua",
        "make",
        "markdown_inline",
        "nix",
        "python",
        "ruby",
        "vim",
        "make",
      },
    },
  },

  -- mason installs executables needed by lspconfig
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev stuff
        -- "html-lsp",
        "prettier",
        "marksman",
        "autotools-language-server",
        "bash-language-server"
        -- c/cpp stuff
        -- clangd and clang-format need dynamic linking that in nix works different
        -- install them in nix way to avoid dinamic linking clash
        -- https://github.com/Mic92/nix-ld
        --"clangd",
        --"clang-format",
      },
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
  {
    'puremourning/vimspector',
    -- lazy = false,
  },
}
return plugins
