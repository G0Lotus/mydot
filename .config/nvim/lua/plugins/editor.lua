local editor_plugins = {
  {
    "max397574/better-escape.nvim",
    lazy = true,
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "echasnovski/mini.align",
    version = "*",
    config = function()
      require("mini.align").setup()
    end,
  },
}

return editor_plugins
