if place_meeting(x, y, oPoodle)
	{
		var instanceid = instance_place(mouse_x, mouse_y, oPoodle)
		draw_text((x * xadjust) + xoffset, (y * yadjust) + yoffset, "POODLE")
		draw_text((x * xadjust) + xoffset, (y * yadjust) + yoffset + ylinespacing, "hunger: " + string(instanceid.hp) + "/" + string(instanceid.hpmax))
		draw_text((x * xadjust) + xoffset, (y * yadjust) + yoffset + ylinespacing * 2, "morale: " + string(instanceid.morale))
	}