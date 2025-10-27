xspd = 0

//falling

if !place_meeting(x, y+1, oWall)
	{
		yspd += 1
		if !has_welped
			{
				has_welped = true
				audio_play_sound(sndPoodleWelp, 1, false)
			}
	}
else {yspd = 0}


//random movement cycles



// core movement
x += xspd
y += yspd