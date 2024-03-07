local conf = {}

local color = {
  white = "#FaFaFa",
  green = "#6A9344",
  acid = "#4EC9B0",
  light_blue = "#9CDCFE",
  blue = "#3F8CD0",
  dark_blue = "#41BCF8",
  purple = "#C586C0",
  yellow = "#F0D409",
  sand = "#DCD686",
  bege = "#CE8D72"
}

conf.ui = {
  theme = 'dark_horizon',
  changed_themes = {
    dark_horizon = {
      base_16 = {
        base03 = color.green,
        base08 = color.light_blue,
        base09 = color.dark_blue,
        base0D = color.sand,
        base0E = color.blue,
        base0A = color.acid,
        base0B = color.bege,
        base0C = color.yellow
      },
      base_30 = {
        grey_fg = color.green,
        sun = color.yellow,
        orange = color.sand,
        white = color.white,
      },
    }
  }
}

local hl = vim.api.nvim_set_hl

conf.override_hl = function()
  hl(0, '@include', { fg = color.purple })
  hl(0, '@attribute', { fg = color.sand })
  hl(0, '@parameter', { fg = color.light_blue })
  hl(0, '@property', { fg = color.light_blue })
  hl(0, '@variable', { fg = color.dark_blue })
  hl(0, '@constructor', { fg = color.acid })
  hl(0, '@type.qualifier', { fg = color.blue })
  hl(0, '@conditional', { fg = color.purple })
  hl(0, '@keyword', { fg = color.purple })
  hl(0, '@exception', { fg = color.purple })
end


return conf
