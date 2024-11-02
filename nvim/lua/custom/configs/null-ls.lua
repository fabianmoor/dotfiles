local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- Add the pylint diagnostic source
    null_ls.builtins.diagnostics.pylint.with({
      -- Optional: specify the command if it's not in your PATH
      command = "pylint",
      -- Optional: specify extra arguments
      extra_args = { "--disable=C0111" }, -- example to disable a specific warning
    }),
  },
})
