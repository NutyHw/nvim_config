local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node


ls.add_snippets("terraform", {
  s("s3",{
    t('module "s3"{}')
  })
})
