if fishing_mode = false
	// NORMAL GAMEPLAY
	{
		// basic left right movement
		if keyboard_check(right_key) 
			{xspd = movespd}
		else if keyboard_check(left_key)
			{xspd = -1 * movespd}
		else
			{xspd = 0}
	
		// collision with walls
		if place_meeting(x + xspd, y - 2, oWall) {xspd = 0}
	
		// slow fall speed in water
		if place_meeting(x, y, oWater) {yspd = fallspd * waterFallModifier}
		// fall at increasing speed
		else {yspd += fallspd}
		// terminal velocity
		if yspd > yspdMax {yspd = yspdMax}

		// check if on the ground
		if place_meeting(x, y + 4, oWall)
			{
				// if jump is down you will be going up
				if keyboard_check(jump_key) {yspd = -1 * jumpheight}
			}

		// don't move down if you're on a wall	
		if place_meeting(x, y + yspd, oWall) 
			{
				if yspd > 0 {yspd = 0}
			}
		
		
		// BASE MOVEMENT PHYSICS
		x += xspd
		y += yspd
		
		// character faces left or right
		if xspd > 0 {facing = 0}
		else if xspd < 0 {facing = 1}
		
		// draw sprite baced on facing
		if facing = 0 {sprite_index = sPlayerRight}
		else if facing = 1 {sprite_index = sPlayerLeft}
		
		// if character is moving, animate sprite
		if xspd != 0 {image_speed = speed_at_which_the_sprite_will_move}
		// if character is not moving, stay on first frame
		else
			{
				image_speed = 0
				image_index = 0
			}
			
		// DEBUG DEBUG DEBUG
		// ENABLE FISHING MODE
		// DEBUG DEBUG DEBUG
		if keyboard_check(ord("F")) {fishing_mode = true}
	}
else
	// FISHING MODE
		{
			// character direction
			if facing = 0 {sprite_index = sPlayerFishingRight}
			else if facing = 1 {sprite_index = sPlayerFishingLeft}
			
			instance_create_depth(x, y, 0, oMinigameFishing)
		}