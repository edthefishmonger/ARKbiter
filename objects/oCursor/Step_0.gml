x = mouse_x
y = mouse_y


globalStepCounter += 1




// change the cursordepending on what is being hovered over

// animal interaction
if place_meeting(x, y, oAnimal)
	{
		var instanceid = instance_place(mouse_x, mouse_y, oAnimal)
		sprite_index = instanceid.cursorRollover
		if mouse_check_button(mb_left) and !audio_is_playing(instanceid.soundClick)
			{
				audio_play_sound(instanceid.soundClick, 1, false)
				instanceid.morale += 1
			}
	}
// building ship
else if place_meeting(x, y, oWall)
	{
		sprite_index = sCursorHammer
		if mouse_check_button(mb_left) and !audio_is_playing(soundClickHammer) {audio_play_sound(soundClickHammer, 1, false)}
	}
// fishing
else if place_meeting(x, y, oWater) or place_meeting(x, y, oWave)
	{
		sprite_index = sCursorFishingRod
		if mouse_check_button(mb_left) and !audio_is_playing(soundClickFishing) {audio_play_sound(soundClickFishing, 1, false)}
	} 
// default cursor
else {sprite_index = sCursorDefault}