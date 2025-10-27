xspd = 0
yspd = 0
movespd = 1

right = irandom(1)


image_speed = 0

has_welped = false // this determines if the animal has made the sound they make when they fall off the ark yet.

animal = "poodle"
// initialize as correct animal - for now there are only poodles
if animal = "poodle"
	{
		sprite_index = sPoodle
		hpmax = 20
		hp = 20
		morale = 150
		sound_welp = sndPoodleWelp
		soundClick = sndPoodleBark
	}


// unused dummy vars for now
hp = 20
hpmax = 20
morale = 150