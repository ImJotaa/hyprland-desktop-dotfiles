-- GENERAL OPTIONS --
hl.config({
	general = {
		-- Window separation --
		gaps_in = "5",

		-- Screen border separation --
		gaps_out = 15,

		-- Window resize --
		resize_on_border = true,
		extend_border_grab_area = 15
	}
})


-- WINDOW BEHAVIOUR --
hl.window_rule({ match = { class = ".*" }, float = true })

-- Set random location for the new windows
hl.on("window.open", function(w)
	local mw, mh = w.monitor.width, w.monitor.height
	local ww, wh = w.size.x, w.size.y

	local cx = math.random(math.floor(mw * 0.30), math.floor(mw * 0.70))
	local cy = math.random(math.floor(mh * 0.25), math.floor(mh * 0.60))

	local x = cx - math.floor(ww / 2)
	local y = cy - math.floor(mh / 2)

	x = math.max(0, math.min(x, mw - ww))
	y = math.max(0, math.min(y, mh - wh))

	hl.dispatch(hl.dsp.window.move({ x = x, y = y, window = w }))
end)

-- WINDOW SIZE --
hl.window_rule({ match = { float = true }, size = {1200, 600} })

-- Specific window sizes --
hl.window_rule({ match = { class = "kitty" }, size = {1000, 600} })
hl.window_rule({ match = { class = "firefox" }, size = {"70%", "85%"} })
hl.window_rule({ match = { class = "dolphin" }, size = {1100, 700} })

