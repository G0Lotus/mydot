return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      c = { "astyle" },
      cpp = { "astyle" },
    },
    formatters = {
      astyle = {
        command = "astyle",
        prepend_args = { "-A8", "-s4", "-xC100", "-p", "-k3", "-W3", "-j", "-n" },
      },
    },
  },
}
