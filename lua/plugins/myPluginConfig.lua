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
        -- "html",
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
      ensure_installed = {
        -- disable installation of dependency because nixos dont use the same lib path standard
        -- install manually dependency in nix config
        -- https://github.com/Mic92/nix-ld
        -- "lua-language-server",
        -- "stylua",
        -- "prettier", -- ToDo: prettierd is available in nixos, ToDo check how to use this
        -- "marksman",
        -- "bash-language-server", -- ToDo: check if npm packages needs nix-ld
        -- c/cpp stuff
        -- clangd and clang-format need dynamic linking that in nix works different
        -- install them in nix way to avoid dinamic linking clash
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
