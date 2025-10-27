// initialize as correct animal
if !initialized
	{
		// initialize as correct animal
		if animal = "poodle"
		{
			sprite_index = sPoodle
			hpmax = 20
			hp = hpmax
			morale = 150
			soundWelp = sndPoodleWelp
			soundClick = sndPoodleBark
			cursorRollover = sCursorPaw
		}
	else if animal = "elephant"
		{
			sprite_index = sElephant
			hpmax = 50
			hp = hpmax
			morale = 60
			soundWelp = sndElephantWelp
			soundClick = sndElephantTrumpet
			cursorRollover = sCursorPaw
			// this is a temporary fix - MAKE SURE TO CHANGE IT !!!!!!
			y = y - 42
		}
	// if no animal is set, delete the instance
	else {instance_destroy()}
	// prevent initialization from running again
	initialized = true
	}



xspd = 0

//falling

if !place_meeting(x, y+1, oWall)
	{
		yspd += 1
		// "welp" the first time the animal falls. This sound will eventually be the death sound
		if !has_welped
			{
				has_welped = true
				audio_play_sound(soundWelp, 1, false)
			}
	}
else {yspd = 0}


//random movement cycles
if oCursor.globalStepCounter % randommovementvar == 0 and oCursor.globalStepCounter > 0
	{
		movementcounter = 0
		right = irandom(1)
	}
if movementcounter < movement_length
	{
		movementcounter += 1
		xspd = movespd * (right * 2 - 1)
	}
		


// core movement
x += xspd
y += yspd
if xspd > 0 {image_index = 1}
else if xspd < 0 {image_index = 0}