-- BASE LAYOUT AND SEPARATION --

hl.config({
	general = {
		-- Layout type --
		layout = "master",

		-- Window separation --
		gaps_in = "5",

		-- Screen border separation --
		gaps_out = 15
	}
})


-- LAYOUT OPTIONS --
hl.config({
	master = {
		new_status	= "slave",
		new_on_top	= false,
		mfact		= 0.70
	}
})
