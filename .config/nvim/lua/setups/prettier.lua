require("prettier").setup({
  ["null-ls"] = {
    runtime_condition = function(params)
      -- return false to skip running prettier
      return true
    end,
    timeout = 5000,
  }
})
