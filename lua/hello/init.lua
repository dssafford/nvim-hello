-- hello/init.lua

local M = {}

function M.setup()
  vim.api.nvim_create_user_command("HelloWorld", function()
    vim.api.nvim_echo({ { "Reloaded at 2025-05-09 @ 09:02" } }, false, {})
  end, {})

  vim.keymap.set("n", "<leader>hw", function()
    vim.cmd("HelloWorld")
  end, { desc = "Say Hello from Plugin" })
end

return M