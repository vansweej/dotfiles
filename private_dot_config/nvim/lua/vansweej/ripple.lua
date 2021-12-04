vim.g.ripple_repls = {}
vim.g.ripple_repls = {
    julia = {
        command = 'julia',
        pre = '',
        post = '',
        addcr = 0,
        filter = 0,
    },
    haskell = {
        command = 'stack ghci',
        pre = '',
        post = '',
        addcr = 0,
        filter = 0,
    }
}
