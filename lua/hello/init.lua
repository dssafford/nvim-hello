-- hello/init.lua

local M = {}

function M.setup()
  vim.api.nvim_create_user_command("HelloWorld", function()
    vim.api.nvim_echo({ { "Hello from this is updated 2025-05-09 @ 08:19", "None" } }, false, {})
  end, {})

  vim.keymap.set("n", "<leader>hw", function()
    vim.cmd("HelloWorld")
  end, { desc = "Say Hello from Plugin" })
end

return M