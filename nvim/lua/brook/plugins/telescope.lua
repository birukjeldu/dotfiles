return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require('telescope.builtin')
    telescope.setup({
      defaults = {
    
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness
 
    keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find files in cwd excluding gitignores" })
    keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files in cwd' })
    keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Find string in cwd' })
    keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Currently Open files' })
    keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  end,
}
