return {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    }, 

    config = function()
        
        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")

        require("mason").setup({

            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
        mason_lspconfig.setup({
          -- list of servers for mason to install
          ensure_installed = {
            "lua_ls",
            "graphql",
            "gopls",
          },
          -- auto-install configured servers (with lspconfig)
          automatic_installation = true, -- not the same as ensure_installed
        })

        mason_tool_installer.setup({
          ensure_installed = {
            "prettier", -- prettier formatter
            "stylua", -- lua formatter
            "golines", -- go formatter
            "templ",
          },
        })

    end
}
