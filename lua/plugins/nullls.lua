local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.cppcheck,
        null_ls.builtins.formatting.uncrustify
    }
})
