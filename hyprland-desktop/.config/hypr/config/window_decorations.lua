local colors = require("config/colors")

-- Window borders --
hl.config({
	general = {
		border_size		= 1,
		["col.active_border"]	= colors.lime,
		["col.inactive_border"]	= colors.border
	}
})

hl.config({
	decoration	= {
		rounding		= 10,
		active_opacity		= 1.0,
		inactive_opacity	= 0.95,

		shadow = {
			enabled		= true,
			range		= 15,
			render_power	= 3,
			color		= "rgba(00000055)"
		}
	}
})
