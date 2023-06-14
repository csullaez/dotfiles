--[[ local luasnip = require("luasnip")

-- Definir snippets para JavaScript
local js_snippets = {
  luasnip.snippet("prueba", {
    "console.log(${1})$0",
  }),
  -- Agrega más snippets aquí según tus necesidades
}

-- Definir snippets para TypeScript
local ts_snippets = {
  luasnip.snippet("prueba", {
    "console.log(${1})$0",
  }),
  -- Agrega más snippets aquí según tus necesidades
}

-- Agregar los snippets al source de LuaSnip
luasnip.snippets = {
  javascript = js_snippets,
  typescript = ts_snippets,
} ]]
