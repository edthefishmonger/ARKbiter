xspd = 0
yspd = 0
movespd = 1

right = irandom(1)


image_speed = 0

has_welped = false // this determines if the animal has made the sound they make when they fall off the ark yet.


animal = "undefined" 
initialized = false // used to run animal initialization based on creation code at the start of Step event

// establish variables w/ dummy info
hp = 20
hpmax = 20
morale = 150
soundWelp = sndPoodleWelp
cursorRollover = sCursorPaw
soundClick = sndPoodleBark



// JANK - RANDOM MOVEMENT - MAKE IT GOOD ! ! ! ! !
randommovementvar = random(40) + 140
movement_length = 20 + random(20)
movementcounter = 1