-- / Rotary Switches start --/

function lib_switches()

if captain then
	baro_rotary_pilot = "capt"
	mins_rotary_pilot = "cpt"
	toggle_sw_pilot = "capt"
else
	baro_rotary_pilot = "fo"
	mins_rotary_pilot = "fo"
	toggle_sw_pilot = "fo"
end

	--/ vor1 toggle switch start --/
	function vor1_toggle_sw_pos(position, direction)
	  
		if direction == 1 then
			xpl_command("laminar/B738/EFIS_control/"..toggle_sw_pilot.."/vor1_off_up")
			--print("Command sent : laminar/B738/EFIS_control/"..toggle_sw_pilot.."/vor1_off_up")
		end
		if direction == -1 then
			xpl_command("laminar/B738/EFIS_control/"..toggle_sw_pilot.."/vor1_off_dn")
			--print("Command sent : laminar/B738/EFIS_control/"..toggle_sw_pilot.."/vor1_off_dn")
		end

		--print("direction is : "..direction)
		--print("position is : "..position)
	end
	vor1_toggle_img = switch_add("vor_off.png", "vor_on.png", 61,233.25,61.542,98.862,vor1_toggle_sw_pos)
	-- "vor_inop.png"
	function vor1_toggle_sw_dataref(vor1_toggle_sw_state)
		if vor1_toggle_sw_state == 0 then
			--print("vor off")
			switch_set_state(vor1_toggle_img, 0)
		end
		if vor1_toggle_sw_state == 1 then
			--print("vor on")
			switch_set_state(vor1_toggle_img, 1)
		end
--[[ 		if vor1_toggle_sw_state == -1 then
			--print("vor inop")
			switch_set_state(vor1_toggle_img, 2)
		end --]]
		--print("toggle is : "..vor1_toggle_sw_state)
	end
	xpl_dataref_subscribe("laminar/B738/EFIS_control/"..toggle_sw_pilot.."/vor1_off_pos", "INT", vor1_toggle_sw_dataref)
	
	--/ vor1 toggle switch end --/
	
		--/ vor2 toggle switch start --/
	function vor2_toggle_sw_pos(position, direction)
	  
		if direction == 1 then
			xpl_command("laminar/B738/EFIS_control/"..toggle_sw_pilot.."/vor2_off_up")
			--print("Command sent : laminar/B738/EFIS_control/"..toggle_sw_pilot.."/vor2_off_up")
		end
		if direction == -1 then
			xpl_command("laminar/B738/EFIS_control/"..toggle_sw_pilot.."/vor2_off_dn")
			--print("Command sent : laminar/B738/EFIS_control/"..toggle_sw_pilot.."/vor2_off_dn")
		end

		--print("direction is : "..direction)
		--print("position is : "..position)
	end
	vor2_toggle_img = switch_add("vor_off.png", "vor_on.png", 749,233.25,61.542,98.862,vor2_toggle_sw_pos)
	-- "vor_inop.png"
	function vor2_toggle_sw_dataref(vor2_toggle_sw_state)
		if vor2_toggle_sw_state == 0 then
			--print("vor off")
			switch_set_state(vor2_toggle_img, 0)
		end
		if vor2_toggle_sw_state == 1 then
			--print("vor on")
			switch_set_state(vor2_toggle_img, 1)
		end
--[[ 		if vor2_toggle_sw_state == -1 then
			--print("vor inop")
			switch_set_state(vor2_toggle_img, 2)
		end --]]
		--print("toggle is : "..vor2_toggle_sw_state)
	end
	xpl_dataref_subscribe("laminar/B738/EFIS_control/"..toggle_sw_pilot.."/vor2_off_pos", "INT", vor2_toggle_sw_dataref)
	
	--/ vor2 toggle switch end --/

	--/ mins rotary switch start --/
	function mins_rotary_sw_pos(position, direction)
	  
		if direction == 1 then
			xpl_command("laminar/B738/EFIS_control/"..mins_rotary_pilot.."/minimums_up")
			--print("Command sent : laminar/B738/EFIS_control/"..mins_rotary_pilot.."/minimums_up")
		elseif direction == -1 then
			xpl_command("laminar/B738/EFIS_control/"..mins_rotary_pilot.."/minimums_dn")
			--print("Command sent : laminar/B738/EFIS_control/"..mins_rotary_pilot.."/minimums_dn")
		end

	end
	function mins_rotary_sw_dataref(mins_rotary_sw_state)
	  if mins_rotary_sw_state == 0 then
		switch_set_state(mins_rotary_img, 0)
	  end

	  if mins_rotary_sw_state == 1 then
		switch_set_state(mins_rotary_img, 1)
	  end
	end
	xpl_dataref_subscribe("laminar/B738/EFIS_control/"..mins_rotary_pilot.."/minimums", "INT", mins_rotary_sw_dataref)
	mins_rotary_img = switch_add("big_efis_left.png", "big_efis_right.png", 113,86,123,123,mins_rotary_sw_pos)
	--/ mins rotary switch end --/

	--/ baro rotary switch start --/
	function baro_rotary_sw_pos(position, direction)
	  
		if direction == 1 then
			xpl_command("laminar/B738/EFIS_control/"..baro_rotary_pilot.."/baro_in_hpa_dn")
			--print("Command sent : laminar/B738/EFIS_control/"..baro_rotary_pilot.."/baro_in_hpa_dn")
		elseif direction == -1 then
			xpl_command("laminar/B738/EFIS_control/"..baro_rotary_pilot.."/baro_in_hpa_up")
			--print("Command sent : laminar/B738/EFIS_control/"..baro_rotary_pilot.."/baro_in_hpa_up")
		end

	end
	function baro_rotary_sw_dataref(baro_rotary_sw_state)
	  if baro_rotary_sw_state == 0 then
		switch_set_state(baro_rotary_img, 0)
	  end

	  if baro_rotary_sw_state == 1 then
		switch_set_state(baro_rotary_img, 1)
	  end
	end
	xpl_dataref_subscribe("laminar/B738/EFIS_control/"..baro_rotary_pilot.."/baro_in_hpa", "INT", baro_rotary_sw_dataref)
	baro_rotary_img = switch_add("big_efis_left.png", "big_efis_right.png", 634,86,123,123,baro_rotary_sw_pos)
	--/ baro rotary switch end --/
	
	
	--/ map mode rotary switch start --/
	function map_mode_rotary_sw_pos(position, direction)
	  
		if direction == 1 then
			xpl_command("laminar/B738/EFIS_control/"..baro_rotary_pilot.."/map_mode_up")
			--print("Command sent : laminar/B738/EFIS_control/"..baro_rotary_pilot.."/map_mode_up")
		elseif direction == -1 then
			xpl_command("laminar/B738/EFIS_control/"..baro_rotary_pilot.."/map_mode_dn")
			--print("Command sent : laminar/B738/EFIS_control/"..baro_rotary_pilot.."/map_mode_dn")
		end

	end
	function map_mode_rotary_sw_dataref(map_mode_rotary_sw_state)
	  if map_mode_rotary_sw_state == 0 then
		switch_set_state(map_mode_rotary_img, 0)
	  end
	  if map_mode_rotary_sw_state == 1 then
		switch_set_state(map_mode_rotary_img, 1)
	  end
	  if map_mode_rotary_sw_state == 2 then
		switch_set_state(map_mode_rotary_img, 2)
	  end
	  if map_mode_rotary_sw_state == 3 then
		switch_set_state(map_mode_rotary_img, 3)
	  end
	end
	xpl_dataref_subscribe("laminar/B738/EFIS_control/"..pilot.."/map_mode_pos", "INT", map_mode_rotary_sw_dataref)
	map_mode_rotary_img = switch_add("mode_app.png", "mode_vor.png", "mode_map.png", "mode_pln.png", 277,248,98.256,98.256,map_mode_rotary_sw_pos)
	--/ map mode rotary switch start --/
	
	--/ map range rotary switch start --/
	function map_range_rotary_sw_pos(position, direction)
	  
		if direction == 1 then
			xpl_command("laminar/B738/EFIS_control/"..pilot.."/map_range_up")
			--print("Command sent : laminar/B738/EFIS_control/"..pilot.."/map_range_up")
		elseif direction == -1 then
			xpl_command("laminar/B738/EFIS_control/"..pilot.."/map_range_dn")
			--print("Command sent : laminar/B738/EFIS_control/"..pilot.."/map_range_dn")
		end

	end
	function map_range_rotary_sw_dataref(map_range_rotary_sw_state)
	  if map_range_rotary_sw_state == 0 then
		switch_set_state(map_range_rotary_img, 0)
	  end
	  if map_range_rotary_sw_state == 1 then
		switch_set_state(map_range_rotary_img, 1)
	  end
	  if map_range_rotary_sw_state == 2 then
		switch_set_state(map_range_rotary_img, 2)
	  end
	  if map_range_rotary_sw_state == 3 then
		switch_set_state(map_range_rotary_img, 3)
	  end
	  if map_range_rotary_sw_state == 4 then
		switch_set_state(map_range_rotary_img, 4)
	  end
	  if map_range_rotary_sw_state == 5 then
		switch_set_state(map_range_rotary_img, 5)
	  end
	  if map_range_rotary_sw_state == 6 then
		switch_set_state(map_range_rotary_img, 6)
	  end
	  if map_range_rotary_sw_state == 7 then
		switch_set_state(map_range_rotary_img, 7)
	  end
	end
	xpl_dataref_subscribe("laminar/B738/EFIS/"..pilot.."/map_range", "INT", map_range_rotary_sw_dataref)
	map_range_rotary_img = switch_add("range_5.png", "range_10.png", "range_20.png", "range_40.png","range_80.png","range_160.png","range_320.png","range_640.png", 496,248,98.256,98.256,map_range_rotary_sw_pos)
	
end


-- / Rotary Switches ends --/