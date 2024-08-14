local wezterm = require 'wezterm';
local canonical_solarized = require "canonical_solarized"

local config = {
  hide_tab_bar_if_only_one_tab = true,
  font = wezterm.font("Hack"),
  color_scheme = "Canonical Solarized Dark",
  font_size = 30.0,
}

canonical_solarized.apply_to_config(config)

return config

