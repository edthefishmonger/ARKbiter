if place_meeting(x, y, oAnimal)
	{
		var instanceid = instance_place(mouse_x, mouse_y, oAnimal)
		draw_text((x * xadjust) + xoffset, (y * yadjust) + yoffset, instanceid.animal)
		draw_text((x * xadjust) + xoffset, (y * yadjust) + yoffset + ylinespacing, "hunger: " + string(instanceid.hp) + "/" + string(instanceid.hpmax))
		draw_text((x * xadjust) + xoffset, (y * yadjust) + yoffset + ylinespacing * 2, "morale: " + string(instanceid.morale))
	}