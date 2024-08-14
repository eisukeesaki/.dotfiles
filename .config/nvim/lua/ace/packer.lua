vim.cmd [[packadd packer.nvim]]

return require("packer").startup(
    function(use)
        use "wbthomason/packer.nvim"
        use {
            "nvim-telescope/telescope.nvim",
            requires = {{"nvim-lua/plenary.nvim"}}
        }
        use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
        use "windwp/nvim-ts-autotag"
        use("theprimeagen/harpoon")
        use("mbbill/undotree")
        use("tpope/vim-fugitive")
        use {
            "VonHeikemen/lsp-zero.nvim",
            branch = "v2.x",
            requires = {
                -- LSP Support
                {"neovim/nvim-lspconfig"}, -- Required
                {
                    -- Optional
                    "williamboman/mason.nvim",
                    run = function()
                        pcall(vim.cmd, "MasonUpdate")
                    end
                },
                {"williamboman/mason-lspconfig.nvim"}, -- Optional
                -- Autocompletion
                {"hrsh7th/nvim-cmp"}, -- Required
                {"hrsh7th/cmp-nvim-lsp"}, -- Required
                {"L3MON4D3/LuaSnip"} -- Required
            }
        }
        use("tjdevries/colorbuddy.nvim")
        use {
            "svrana/neosolarized.nvim",
            commit = "c1d9a14"
        }

        use "mfussenegger/nvim-dap"
        use "rcarriga/nvim-dap-ui"
        use "nvim-neotest/nvim-nio"
        use {
            "glacambre/firenvim",
            run = function()
                vim.fn["firenvim#install"](0)
            end
        }
        use("tpope/vim-commentary")
        use {
            "windwp/nvim-autopairs",
            event = "InsertEnter",
            config = function()
                require("nvim-autopairs").setup {}
            end
        }
        -- packer.nvim
        use(
            {
                "robitx/gp.nvim",
                config = function()
                    require("gp").setup()

                    -- or setup with your own config (see Install > Configuration in Readme)
                    -- require("gp").setup(config)

                    -- shortcuts might be setup here (see Usage > Shortcuts in Readme)
                end
            }
        )
	use({
	  "jackMort/ChatGPT.nvim",
	    config = function()
	      require("chatgpt").setup()
	    end,
	    requires = {
	      "MunifTanjim/nui.nvim",
	      "nvim-lua/plenary.nvim",
	      "folke/trouble.nvim",
	      "nvim-telescope/telescope.nvim"
	    }
	})
        use("github/copilot.vim")
    end
)

