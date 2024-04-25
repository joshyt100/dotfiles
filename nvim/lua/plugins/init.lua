return {
  "Nvchad/nvcommunity",
  {import = "nvcommunity.completion.codeium"},
  {
    "stevearc/conform.nvim",
    config = function()
   require("nvchad.configs.lspconfig").default() 
    require "configs.conform"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },

  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
    config = function()
        require("nvchad.configs.lspconfig").defaults()
        require "configs.lspconfig"
    end,
  },
  -- lazy.nvim

  -- Install all required plugins
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- For python
        "pyright",
        "mypy",
        "pylint",
       "black",
        -- For Web Development
        "typescript-language-server",
        "tailwindcss-language-server",
        "prettierd",
        "emmet-language-server",
      }
    }
  },
  -- lazy.nvim
  -- Install all required language syntax
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local opts = require("nvchad.configs.treesitter")
      opts.ensure_installed = {
        "lua",
        "python",
        "javascript",
       "typescript",
        "tsx",
        "html",
        "css",
        "go"
      }
    end
  },

  -- Null LS
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "configs.null-ls"
    end
  },
  {
    "Exafunction/codeium.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    lazy = false,
    config = function()
        require("codeium").setup({
        })
    end
},
-- lazy.nvim
  -- Auto close tag for jsx, tsx
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact"
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },

}

