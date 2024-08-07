return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>a", "mark.add_file" },
    { "C-e", "ui.toggle_quick_menu" },
    { "C-h", "function() ui.nav_file(1) end" },
    { "C-j", "function() ui.nav_file(2) end" },
    { "C-k", "function() ui.nav_file(3) end" },
    { "C-l", "function() ui.nav_file(4) end" },
  },
}
