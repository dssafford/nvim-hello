-- lua/hello/init.lua

local M = {}

function M.setup()
  vim.api.nvim_create_user_command("HelloWorld", function()
    -- vim.api.nvim_echo({ { "Absolutely final Hello from plugin! 2025-05-09 @ 09:56", "None" } }, false, {})
    vim.api.nvim_echo({ { "🔁 Hey dude - last try here - Reloaded @ " .. os.date() } }, false, {})
  end, {})

  vim.keymap.set("n", "<leader>hw", function()
    vim.cmd("HelloWorld")
  end, { desc = "Say Hello from Plugin" })
end

return M  -- ✅ This must return the module