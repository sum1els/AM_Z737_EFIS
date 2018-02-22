function lib_rotary_buttons()

	function rst_pressed()
		xpl_command("laminar/B738/EFIS_control/"..pilot.."/push_button/rst_press")
		print("Command sent: laminar/B738/EFIS_control/"..pilot.."/push_button/rst_press")
	end
	rst_button = button_add("rst_button.png", "rst_button.png", 144.2,117.3,60.472,60.472, rst_pressed)

	function std_pressed()
		xpl_command("laminar/B738/EFIS_control/"..pilot.."/push_button/std_press")
		print("Command sent: laminar/B738/EFIS_control/"..pilot.."/push_button/std_press")
	end
	rst_button = button_add("std_button.png", "std_button.png", 666.4,117.3,60.472,60.472, std_pressed)
	
	function ctr_pressed()
		xpl_command("laminar/B738/EFIS_control/"..pilot.."/push_button/ctr_press")
		print("Command sent: laminar/B738/EFIS_control/"..pilot.."/push_button/ctr_press")
	end
	ctr_button = button_add("ctr_button.png", "ctr_button.png", 296.408,267,60.472,60.472, ctr_pressed)
	
	function tfc_pressed()
		xpl_command("laminar/B738/EFIS_control/"..pilot.."/push_button/tfc_press")
		print("Command sent: laminar/B738/EFIS_control/"..pilot.."/push_button/tfc_press")
	end
	tfc_button = button_add("tfc_button.png", "tfc_button.png", 515.516,267,60.472,60.472, tfc_pressed)
	
end
