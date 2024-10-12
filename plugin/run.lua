vim.api.nvim_set_keymap("n", "<C-R>", ':lua require("run.module").run_code()<CR>', { noremap = true, silent = true })
