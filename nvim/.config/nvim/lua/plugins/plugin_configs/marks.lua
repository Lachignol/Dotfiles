require('marks').setup({
  default_mappings = true,
  builtin_marks = {},
  cyclic = true,
  force_write_shada = false,
  refresh_interval = 250,
  sign_priority = { lower=10, upper=15, builtin=8, bookmark=20 },
  enable_bookmarks = true,
  excluded_buftypes = { "terminal" },
  -- BOOKMARKS CHIFFRES : symbole clair pour éviter ')'
  bookmark_0 = { sign = "0️⃣", virt_text = "0" },
  bookmark_1 = { sign = "1️⃣", virt_text = "1" },
  bookmark_2 = { sign = "2️⃣", virt_text = "2" },
  bookmark_3 = { sign = "3️⃣", virt_text = "3" },
  bookmark_4 = { sign = "4️⃣", virt_text = "4" },
  bookmark_5 = { sign = "5️⃣", virt_text = "5" },
  bookmark_6 = { sign = "6️⃣", virt_text = "6" },
  bookmark_7 = { sign = "7️⃣", virt_text = "7" },
  bookmark_8 = { sign = "8️⃣", virt_text = "8" },
  bookmark_9 = { sign = "9️⃣", virt_text = "9" },
  mappings = {
    -- Optionnel : tes prefs
    next = "m]",
    prev = "m[",
    preview = "m:",
  }
})

vim.keymap.set("n", "<leader>dam", function()
  vim.cmd("delmarks! | delmarks A-Z | delmarks 0-9")
end, { desc = "Delete ALL marks" })
