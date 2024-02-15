-- highlight code
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "bash", "python", "lua" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
