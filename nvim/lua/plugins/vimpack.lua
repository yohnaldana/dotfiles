-- Themes
-- "https://github.com/rebelot/kanagawa.nvim.git",

vim.pack.add({
  "https://github.com/kungfusheep/mfd.nvim.git",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/nvim-lualine/lualine.nvim",
  "https://github.com/MeanderingProgrammer/render-markdown.nvim",
  "https://github.com/folke/zen-mode.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
  "https://github.com/numToStr/Comment.nvim.git",
  "https://github.com/mason-org/mason.nvim.git",
  "https://github.com/folke/which-key.nvim",
  "https://github.com/nvim-telescope/telescope-file-browser.nvim",
  "https://github.com/hrsh7th/nvim-cmp",
  "https://github.com/hrsh7th/cmp-nvim-lsp",
  "https://github.com/kylechui/nvim-surround.git",
  "https://github.com/nyoom-engineering/oxocarbon.nvim",
})

local function build_fzf()
  local dir = vim.fn.stdpath('data')
    .. '/site/pack/core/opt/telescope-fzf-native.nvim'
  if vim.fn.isdirectory(dir) == 0 then
    vim.notify('telescope-fzf-native.nvim not found at: ' .. dir, vim.log.levels.WARN)
    return
  end
  if vim.fn.glob(dir .. '/build/libfzf.*') == '' then
    vim.notify('Building telescope-fzf-native.nvim...', vim.log.levels.INFO)
    vim.system({ 'make' }, { cwd = dir }):wait()
  end
end

build_fzf()
