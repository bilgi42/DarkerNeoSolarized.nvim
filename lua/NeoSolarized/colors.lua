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
  
  -- Background variants for different states
  bg_red      = '#dc322f22', -- error.background, conflict.background
  bg_green    = '#85990022', -- created.background
  bg_yellow   = '#b5890022', -- modified.background
  bg_blue     = '#268bd222', -- info.background, editor.document_highlight.read_background
  bg_orange   = '#cb4b1622', -- deleted.background
  bg_purple   = '#d3368244', -- selection colors for players
  
  -- Diff colors
  diff_add    = '#85990044', -- search.match_background, predictive syntax background
  diff_change = '#268bd244', -- editor.document_highlight.bracket_background
  diff_delete = '#dc322f44', -- player selection
  diff_text   = '#2aa19844', -- ghost_element.selected, player selection
  
  -- Special colors
  scrollbar_thumb = '#073642bb', -- scrollbar.thumb.background
  indent_guide = '#586e75bb',    -- editor.indent_guide_active, panel.indent_guide_active
  
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
