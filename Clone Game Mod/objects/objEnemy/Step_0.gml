// SCREEN WRAPPING

if x > room_width {
	x = 0
}
if x < 0 {
	x = room_width
}

// GROUND COLLISIONS

checkplat = collision_rectangle(x-sprite_width/3, y, x+sprite_width/3, y+sprite_height/2, objPlatform, false, false);
if (checkplat != noone) {
	grav = gravstart
	fallspeed = 0
	y = checkplat.y-checkplat.sprite_height/2-(sprite_height/2)
} else {
	grounded = false
}

// MOVE
x += horizspeed

// BONK (UP)

checkplat = collision_rectangle(x-sprite_width/3, y, x+sprite_width/3, y-sprite_height/2, objPlatform, false, false);
if checkplat != noone {
	grav = -grav
	fallspeed = -fallspeed
	y = checkplat.y+checkplat.sprite_height/2+sprite_height/2
}

if y < sprite_height/2 {
	grav = -grav
	fallspeed = -fallspeed
}

// BONK (LEFT)

checkplat = collision_rectangle(x - sprite_height/3, y - sprite_height/3, x - sprite_height/3, y + sprite_height/3, objPlatform, false, false)
if checkplat != noone and multiplier < 0 {
	grav = gravstart
	fallspeed = 0
	multiplier = 1
}

// BONK (RIGHT)

checkplat = collision_rectangle(x + sprite_height/3, y - sprite_height/3, x + sprite_height/3, y + sprite_height/3, objPlatform, false, false)
if checkplat != noone and multiplier > 0 {
	grav = gravstart
	fallspeed = 0
	multiplier = -1
}


// GRAVITY

if !grounded {
	if grav < gravstart {
		grav += gravreturn
	}
	y += fallspeed
	fallspeed += grav
}
