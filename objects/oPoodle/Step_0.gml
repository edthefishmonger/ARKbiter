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
if movementcounter = maxmovementcounter
	{
		counter += 1
		if counter > maxcounter
			{
				movementcounter = 0
				counter = mincounter
				right = irandom(1)
			}
	}
else
	{
		movementcounter += 1
		if right 
			{
				xspd = movespd
				image_index = 0
			}
		else 
			{
				xspd = -1 * movespd
				image_index = 1
			}
	}
	
	



// core movement
x += xspd
y += yspd