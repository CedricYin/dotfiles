return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "lua", "bash", "make", "c", "cpp", "cuda", "cmake", "git_config", "git_rebase", "gitcommit",
        "gitignore", "kconfig", "toml", "vim", "vimdoc", "xml", "yaml", "json", "rust", "python", "markdown",
        "ssh_config", "strace", "diff"
      })
    end,
  },
}
