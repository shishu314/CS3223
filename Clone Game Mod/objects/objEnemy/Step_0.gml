// SCREEN WRAPPING

if x > room_width {
	x = 0
}
if x < 0 {
	x = room_width
}

// KILLING
checkenemy = collision_rectangle(x - sprite_width/3, y - sprite_height/3, x + sprite_width/3, y + sprite_height/3, objPlayer, false, false)
if checkenemy != noone {
	if checkenemy.y < y {
		global.PLAYERSCORE += 150
		instance_destroy()
	}
}

// GROUND COLLISIONS

checkplat = instance_position(x, y+(sprite_height/2), objPlatform)
if(checkplat == noone) {
	checkplat = instance_position(x+sprite_width/3, y+(sprite_height/2), objPlatform)
}
if(checkplat == noone) {
	checkplat = instance_position(x-sprite_width/3, y+(sprite_height/2), objPlatform)
}
if (checkplat != noone) {
	grav = gravstart
	fallspeed = 0
	y = checkplat.y-(sprite_height/2)
} else {
	grounded = false
}

// MOVE
x += horizspeed

// BONK (UP)

checkplat = instance_position(x, y-(sprite_height/2 + 4), objPlatform)
if(checkplat == noone) {
	checkplat = instance_position(x+sprite_width/3, y-(sprite_height/2 + 4), objPlatform)
}
if(checkplat == noone) {
	checkplat = instance_position(x-sprite_width/3, y-(sprite_height/2 + 4), objPlatform)
}
if y < sprite_height or checkplat != noone {
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
