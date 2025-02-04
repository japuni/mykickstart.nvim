-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    "sourcegraph/sg.nvim",
    dependencies = { "nvim-lua/plenary.nvim", --[[ "nvim-telescope/telescope.nvim ]] },

    -- If you have a recent version of lazy.nvim, you don't need to add this!
  },

  {
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
    config = function()
      require("hlchunk").setup({
        line_num = {
          enable = true,
          style = "#af87d7",
        },
        indent = {
          chars = {
            "│",
          },
        },
        chunk = {
          enable = false,
        },
        blank = {
          enable = false,
        }
      })
    end
  } --,
  -- 'echasnovski/mini.indentscope',
  -- config = function()
  --   require('mini.indentscope').setup()
  -- end
}
