local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

config.color_scheme = "Tokyo Night"

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 19

config.enable_tab_bar = true

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.90
config.macos_window_background_blur = 20
config.window_close_confirmation = "NeverPrompt"

-- Short cuts
config.keys = {
	-- Splits
	{ key = "d", mods = "CMD", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "d", mods = "CMD|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },

	-- Close pane / tab, no confirmation
	{ key = "w", mods = "CMD", action = act.CloseCurrentPane({ confirm = false }) },

	-- Tabs
	{ key = "t", mods = "CMD", action = act.SpawnTab("CurrentPaneDomain") },
	{ key = "h", mods = "CMD|SHIFT", action = act.ActivateTabRelative(-1) },
	{ key = "l", mods = "CMD|SHIFT", action = act.ActivateTabRelative(1) },

	-- Pane cycling
	{ key = "h", mods = "CMD", action = act.ActivatePaneDirection("Prev") },
	{ key = "l", mods = "CMD", action = act.ActivatePaneDirection("Next") },

	-- Directional pane switching
	{ key = "LeftArrow", mods = "CMD|OPT", action = act.ActivatePaneDirection("Left") },
	{ key = "RightArrow", mods = "CMD|OPT", action = act.ActivatePaneDirection("Right") },
	{ key = "UpArrow", mods = "CMD|OPT", action = act.ActivatePaneDirection("Up") },
	{ key = "DownArrow", mods = "CMD|OPT", action = act.ActivatePaneDirection("Down") },

	-- Resize
	{ key = "LeftArrow", mods = "CMD|CTRL", action = act.AdjustPaneSize({ "Left", 3 }) },
	{ key = "RightArrow", mods = "CMD|CTRL", action = act.AdjustPaneSize({ "Right", 3 }) },
	{ key = "UpArrow", mods = "CMD|CTRL", action = act.AdjustPaneSize({ "Up", 3 }) },
	{ key = "DownArrow", mods = "CMD|CTRL", action = act.AdjustPaneSize({ "Down", 3 }) },

	-- Zoom active pane
	{ key = "Enter", mods = "CMD|SHIFT", action = act.TogglePaneZoomState },
}

-- Cmd+1..8 jump to tab, Cmd+9 jumps to the last tab (Warp's behaviour)
for i = 1, 8 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "CMD",
		action = act.ActivateTab(i - 1),
	})
end
table.insert(config.keys, { key = "9", mods = "CMD", action = act.ActivateTab(-1) })

config.default_prog = { "/opt/homebrew/bin/fish", "-l" }
return config
