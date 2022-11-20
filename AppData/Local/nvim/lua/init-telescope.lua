-- enable treesitter parsing
local telescope = require('telescope')
telescope.setup({
    -- ...
    extensions = {
        heading = {
            treesitter = true,
        },
    },
})
telescope.load_extension('heading')
telescope.load_extension("emoji")