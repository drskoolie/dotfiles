require("codecompanion").setup({
  strategies = {
    chat = {
      adapter = "openai",
    },
  },
  adapters = {
    openai = function()
      return require("codecompanion.adapters").extend("openai", {
        env = {
          api_key = vim.env.OPENAI_API_KEY, -- Replace with your OpenAI API key
        },
      })
    end,
  },
})
