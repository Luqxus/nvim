return {
  n = {
    -- Replace word under cursor globally in file
    ["<leader>r"] = {
      ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/g<Left><Left>",
      desc = "Replace word under cursor in file",
    },

    -- Replace word under cursor globally, confirm each
    ["<leader>rc"] = {
      ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gc<Left><Left>",
      desc = "Replace word under cursor with confirmation",
    },
    -- OPENCODE MAPPINGS
    ["<leader>'"] = { "<cmd>Opencode<cr>", desc = "Open OpenCode Chat" },
    ["<leader>'i"] = { "<cmd>Opencode inline<cr>", desc = "OpenCode Inline Edit" },
  },
  v = {
    -- Use OpenCode on selected text
    ["<leader>'"] = { ":Opencode selection<cr>", desc = "OpenCode Selection" },
  },
}
