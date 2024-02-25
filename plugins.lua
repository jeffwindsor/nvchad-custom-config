local plugins = {
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle", -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {
      -- your config goes here
      -- or just leave it empty :)
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",

        -- dev personal
        "python",
        "scala",
        "haskell"
      },
    },
  },

  {
    "nvim-neorg/neorg",
    dependencies = { "nvim-lua/plenary.nvim" },
    build = ":Neorg sync-parsers",
    -- lazy = false, -- enable lazy load
    ft = "norg", -- lazy load on file type
    cmd = "Neorg", -- lazy load on command
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                exocortex = "~/Library/Mobile Documents/com~apple~CloudDocs/Documents/exocortex/",
              },
            },
          },
        },
      }
    end,
  }
  -- {
  --   "epwalsh/obsidian.nvim",
  --   version = "*",  -- recommended, use latest release instead of latest commit
  --   lazy = true,
  --   ft = "markdown",
  -- },

  -- { "folke/zen-mode.nvim" },
}

return plugins
