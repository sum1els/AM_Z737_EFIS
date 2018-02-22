--/ Bottom buttons start --/

function lib_bottom_buttons()


	function wxr_pressed()
		xpl_command("laminar/B738/EFIS_control/"..pilot.."/push_button/wxr_press")
		--print("Command sent: laminar/B738/EFIS_control/"..pilot.."/push_button/wxr_press")
	end
	wxr_button = button_add("wxr_button.png", "wxr_button_pressed.png", 78,382,68,68, wxr_pressed)

	---- / ----

	function sta_pressed()
		xpl_command("laminar/B738/EFIS_control/"..pilot.."/push_button/sta_press")
		--print("Command sent: laminar/B738/EFIS_control/"..pilot.."/push_button/sta_press")
	end
	sta_button = button_add("sta_button.png", "sta_button_pressed.png", 186,382,68,68, sta_pressed)

	---- / ----

	function wpt_pressed()
		xpl_command("laminar/B738/EFIS_control/"..pilot.."/push_button/wpt_press")
		--print("Command sent: laminar/B738/EFIS_control/"..pilot.."/push_button/wpt_press")
	end
	wpt_button = button_add("wpt_button.png", "wpt_button_pressed.png", 294,382,68,68, wpt_pressed)

	---- / ----

	function arpt_pressed()
		xpl_command("laminar/B738/EFIS_control/"..pilot.."/push_button/arpt_press")
		--print("Command sent: laminar/B738/EFIS_control/"..pilot.."/push_button/arpt_press")
	end
	arpt_button = button_add("arpt_button.png", "arpt_button_pressed.png", 401,382,68,68, arpt_pressed)

	---- / ----

	function data_pressed()
		xpl_command("laminar/B738/EFIS_control/"..pilot.."/push_button/data_press")
		--print("Command sent: laminar/B738/EFIS_control/"..pilot.."/push_button/data_press")
	end
	data_button = button_add("data_button.png", "data_button_pressed.png", 509,382,68,68, data_pressed)

	---- / ----

	function pos_pressed()
		xpl_command("laminar/B738/EFIS_control/"..pilot.."/push_button/pos_press")
		--print("Command sent: laminar/B738/EFIS_control/"..pilot.."/push_button/pos_press")		
	end
	pos_button = button_add("pos_button.png", "pos_button_pressed.png", 616,382,68,68, pos_pressed)

	---- / ----

	function terr_pressed()
		xpl_command("laminar/B738/EFIS_control/"..pilot.."/push_button/terr_press")
		--print("Command sent: laminar/B738/EFIS_control/"..pilot.."/push_button/terr_press")		
	end
	terr_button = button_add("terr_button.png", "terr_button_pressed.png", 724,382,68,68, terr_pressed)

	---- / ----

	function fpv_pressed()
		xpl_command("laminar/B738/EFIS_control/"..pilot.."/push_button/fpv_press")
		--print("Command sent: laminar/B738/EFIS_control/"..pilot.."/push_button/fpv_press")
	end
	fpv_button = button_add("round_button.png", "round_button_pressed.png", 318.5,77,60.5,60.5, fpv_pressed)

	---- / ----

	function mtrs_pressed()
		xpl_command("laminar/B738/EFIS_control/"..pilot.."/push_button/mtrs_press")
		--print("Command sent: laminar/B738/EFIS_control/"..pilot.."/push_button/mtrs_press")
	end
	mtrs_button = button_add("round_button.png", "round_button_pressed.png", 492.372,77,60.5,60.5, mtrs_pressed)
	
end
--/ Bottom buttons end --/