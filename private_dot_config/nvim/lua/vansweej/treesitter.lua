local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    ensure_installed = { "julia", "haskell", "c", "cpp", "cmake", "cuda", "dockerfile", "glsl", "go", "html", " java", "javascript", "json", "json5", "latex", "llvm", "lua", "python", "rust", "scala", "toml", "typescript", "vim", "yaml", "bash", "nix", "fennel", "commonlisp", "make", "ruby", "scheme" },
    highlight = {
        enable = true
    },
    rainbow = {
        enable = true,
        disable = { "haskell" }, -- list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
    indent = {
        enable = true
    }
}

