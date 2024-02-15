local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "phaazon/hop.nvim" },

    {
	"nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
        },
    },

    -- highlight
	{ 'nvim-treesitter/nvim-treesitter' },
	
    -- language-server-programming
    { 'neovim/nvim-lspconfig' },
    -- theme
	{ 'joshdick/onedark.vim'},
    -- autocomplit
    { 'hrsh7th/cmp-nvim-lsp'},
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },

    -- find text in project
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 
          'nvim-lua/plenary.nvim',
          'BurntSushi/ripgrep',
          'sharkdp/fd'
      }
    },
    -- linter
    { 'jose-elias-alvarez/null-ls.nvim' },
    -- autoclose bracket
    {'windwp/nvim-autopairs', event = "InsertEnter", opts = {}},
    -- tab on top screen
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    -- multi-line comments
    {'terrortylor/nvim-comment'},
    -- line of state at the bottom of the screen
    {'terrortylor/nvim-comment'},

    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'
        }
    },
})
