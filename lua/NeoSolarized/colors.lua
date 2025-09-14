local M = {}

-- @class Dark Color Palette - Solarized Dark Origin
M.dark = {
  -- Main background colors
  bg0         = '#002b36',  -- editor.background, surface.background
  bg1         = '#073642',  -- border, editor.active_line.background
  bg2         = '#00212b',  -- panel.background, status_bar.background, tab.active_background
  
  -- Foreground colors
  fg0         = '#839496',  -- editor.foreground, text, predictive
  fg1         = '#657b83',  -- border.focused, editor.active_line_number, icon
  fg2         = '#586e75',  -- editor.line_number, hint
  
  -- Base colors from Solarized palette
  base1       = '#eee8d5',  -- variable (syntax) (brighter)
  base2       = '#eee8d5',  -- terminal.ansi.white
  base3       = '#fdf6e3',  -- terminal.ansi.bright_white
  
  -- Semantic colors
  red         = '#dc322f',  -- error, conflict, constant, tag
  orange      = '#cb4b16',  -- deleted, enum, preproc, string.regex, string.special, title, warning
  yellow      = '#b58900',  -- modified, boolean, text.literal, type
  green       = '#859900',  -- created, success, keyword, operator
  aqua        = '#2aa198',  -- border.selected, icon.accent, string
  blue        = '#268bd2',  -- accents, info, attribute, constructor, function, property
  purple      = '#d33682',  -- number, renamed
  violet      = '#6c71c4',  -- link_uri, unreachable
  
  -- Background variants for different states (converted from semi-transparent)
  bg_red      = '#2d1b1d', -- error.background, conflict.background
  bg_green    = '#1f2419', -- created.background
  bg_yellow   = '#252119', -- modified.background
  bg_blue     = '#0f1f25', -- info.background, editor.document_highlight.read_background
  bg_orange   = '#231b17', -- deleted.background
  bg_purple   = '#291d25', -- selection colors for players
  
  -- Diff colors (converted from semi-transparent)
  diff_add    = '#1a2318', -- search.match_background, predictive syntax background
  diff_change = '#0e1d24', -- editor.document_highlight.bracket_background
  diff_delete = '#2b1a1a', -- player selection
  diff_text   = '#152322', -- ghost_element.selected, player selection
  
  -- Special colors (converted from semi-transparent)
  scrollbar_thumb = '#0a1f28', -- scrollbar.thumb.background
  indent_guide = '#1e2a2c',    -- editor.indent_guide_active, panel.indent_guide_active
  
  none        = "NONE"
}

-- @class Light Color Palette - keeping original light theme structure
M.light = {
  bg0         = '#fdf6e3',
  bg1         = '#eee8d5',
  bg2         = '#fdf6e3',
  fg0         = '#002b36',
  fg1         = '#839496',
  fg2         = '#657b83',
  base1       = '#93a1a1',
  base2       = '#002b36',
  base3       = '#073642',
  red         = '#dc322f',
  orange      = '#cb4b16',
  yellow      = '#b58900',
  green       = '#859900',
  aqua        = '#2aa198',
  blue        = '#268bd2',
  purple      = '#d33682',
  violet      = '#6c71c4',
  bg_red      = '#da0000',
  bg_green    = '#859000',
  bg_yellow   = '#b59900',
  diff_add    = '#caffca',
  diff_change = '#ffffca',
  diff_delete = '#ffcaca',
  diff_text   = '#e8e8b3',
  none        = "NONE"
}

function M.setup(opts)
  opts = opts or {}
  local config = require("NeoSolarized.config")
  local palette = M.dark
  if config.is_day() then
    palette = M.light
  end
  if type(palette) == "function" then
    palette = palette()
  end
  return palette
end

return M
