-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.keys.normal_mode["<S-h>"] = ":bp<CR>"
lvim.keys.normal_mode["<S-l>"] = ":bn<CR>"
lvim.keys.insert_mode["<S-Enter>"] = "<C-o>$"
lvim.keys.normal_mode["<S-t>"] = ":ToggleTerm direction=float<CR>"
lvim.keys.term_mode["<S-t>"] = "<C-d>"

-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup { { command = "checkstyle",
--   filetypes = { "java" },
--   args = {"-c", "/Users/fabianmoorpucar/dotfiles/config/google_checks.xml"} }
-- }


-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   {
--     command = "checkstyle",
--     filetypes = { "java" },
--     args = { "-c", "/Users/fabianmoorpucar/dotfiles/config/google_checks.xml" },
--   }
-- }

local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.checkstyle.with({
      extra_args = { "-c", "/google_checks.xml" }, -- or "/sun_checks.xml" or path to self written rules
    })
  }
})
