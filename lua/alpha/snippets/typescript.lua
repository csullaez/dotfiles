local ls = require('luasnip')

--[[ ls.snippets.typescript = {
  cl = ls.parser.parse_snippet("console.log(${1:msg})"),
} ]]

ls.snippets.typescript = {
  cl = "console.log(${1:msg})"
}
