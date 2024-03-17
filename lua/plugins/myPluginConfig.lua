local plugins = {

  -- this opts will extend the default opts 
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
}

return plugins
