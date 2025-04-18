return {
    {
      "nvim-lua/plenary.nvim",
      lazy = false,
      config = function()
        -- Neovim 0.10.0+ এর জন্য আধুনিক পদ্ধতি
        if vim.diagnostic then
          vim.diagnostic.config({
            signs = {
              Error = "✘",
              Warn  = "▲",
              Hint  = "⚑",
              Info  = "",
            },
            virtual_text = true,
            underline = true,
            update_in_insert = false,
            severity_sort = true,
          })
        else
          -- পুরানো Neovim ভার্সনের জন্য ফলব্যাক (0.9.x)
          local signs = {
            Error = "✘",
            Warn  = "▲",
            Hint  = "⚑",
            Info  = ""
          }

          for type, icon in pairs(signs) do
            local name = "DiagnosticSign" .. type
            vim.fn.sign_define(name, { text = icon, texthl = name, numhl = name })
          end
        end
      end,
    },
  }
