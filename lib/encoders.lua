

-- / Encoders start --/

function lib_encoders()

if captain then
	enc_pilot = "pilot"
else
	enc_pilot = "copilot"
end

--* RADIO Altimeter *--

	function radio_altimeter(direction)
		if direction == 1 then
			--print(enc_pilot .. " radio alt up")
			xpl_command("laminar/B738/pfd/dh_"..enc_pilot.."_up")
		else
			--print(enc_pilot .. " radio alt down")
			xpl_command("laminar/B738/pfd/dh_"..enc_pilot.."_dn")
		end
	end
	dial_id = dial_add("efis_top_small.png", 125.17,98.3,98.2,98.2,radio_altimeter)

--* BARO Altimeter *--

	function altimeter(direction)
		if direction == 1 then
			--print(enc_pilot .. " baro up")
			xpl_command("laminar/B738/"..enc_pilot.."/barometer_up")
		else
			--print(enc_pilot .. " baro down")
			xpl_command("laminar/B738/"..enc_pilot.."/barometer_down")
		end
	end
	dial_id = dial_add("efis_top_small.png", 646.5,98.3,98.2,98.2,altimeter)
	
end

-- / Encoders end --/