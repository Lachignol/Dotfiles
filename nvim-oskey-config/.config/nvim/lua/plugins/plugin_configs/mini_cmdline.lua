require("mini.cmdline").setup({
  autocomplete = {
    enable = true,
    delay = 0,
    predicate = nil,
    map_arrows = true,
  },
  autocorrect = {
    enable = true,
    func = nil,
  },
  autopeek = {
    enable = true,
    n_context = 1,
    predicate = nil,
    window = {
      config = {},
      statuscolumn = nil,
    },
  },
})
