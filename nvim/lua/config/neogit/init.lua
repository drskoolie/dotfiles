local neogit = require("neogit")

neogit.setup {
  -- override/add mappings
  mappings = {
    -- modify status buffer mappings
    status = {
      ["P"] = "PullPopup",
      ["p"] = "PushPopup",
    }
  }
}
