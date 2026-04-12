-- dust.lua theme

vim.o.termguicolors = true

local p = {
  bg = "212121",
  fg = "#ffffff",
  muted = "#aeb0b5",
  blue = "#105bd8",
  cyan = "#02bfe7",
  green = "#2e8540",
  yellow = "#ff9d1e",
  red = "#dd361c",
  magenta = "#4c2c92",
  selection = "#d6d7d9",
  cursorline = "#dce4ef",
}

local set = vim.api.nvim_set_hl

set(0, "Normal",       { fg = p.fg, bg = p.bg })
set(0, "NormalFloat",  { fg = p.fg, bg = p.bg })
set(0, "Comment",      { fg = p.muted, italic = true })
set(0, "String",       { fg = p.green })
set(0, "Keyword",      { fg = p.magenta, bold = true })
set(0, "Function",     { fg = p.blue })
set(0, "Type",         { fg = p.yellow })
set(0, "Identifier",   { fg = p.cyan })
set(0, "LineNr",       { fg = p.muted })
set(0, "CursorLine",   { bg = p.cursorline })
set(0, "CursorLineNr", { fg = p.yellow, bold = true })
set(0, "Visual",       { bg = p.selection })
set(0, "StatusLine",   { fg = p.fg, bg = p.cursorline })
set(0, "Pmenu",        { fg = p.fg, bg = p.cursorline })
set(0, "PmenuSel",     { fg = p.bg, bg = p.blue })
