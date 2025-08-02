
return (
    {
        "saghen/blink.cmp",
        dependencies = { "rafamadriz/friendly-snippets" },
        version = '1.*',
        opts = {
            keymap = {
                preset = 'default',

                ['<C-k>'] = { 'select_prev', 'fallback' },
                ['<C-j>'] = { 'select_next', 'fallback' },
                ['<Tab>'] = { 'accept', 'fallback' },
            },
            appearance = {
                nerd_font_variant = 'mono'
            },
            completion = {
                documentation = { auto_show = false } 
            },
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' }
            },
            fuzzy = {
                implementation = "prefer_rust_with_warning"
            },
            -- opts_extend = { "sources.default" },
        }
    }
)
