vim.api.nvim_create_user_command("MyFirstFunction", require("run").hello, {})
