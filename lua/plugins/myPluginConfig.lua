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
        "markdown",
        "markdown_inline",
        "nix",
        "python",
        "ruby",
        "vim",
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
}

return plugins
