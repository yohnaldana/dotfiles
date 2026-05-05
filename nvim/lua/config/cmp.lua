local cmp = require('cmp')

cmp.setup({
  completion = {
    autocomplete = { cmp.TriggerEvent.TextChanged },
  },

  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  },

  sources = {
    { name = 'nvim_lsp' },
  },
})
