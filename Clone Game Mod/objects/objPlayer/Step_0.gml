// SCREEN WRAPPING

if x > room_width {
	x = 0
}
if x < 0 {
	x = room_width
}

// DEATH
checkenemy = collision_rectangle(x - sprite_width/3, y - sprite_height/3, x + sprite_width/3, y + sprite_height/3, objEnemy, false, false)
if checkenemy != noone {
	if checkenemy.y < y and !spawnprotection {
		instance_destroy()
		global.PLAYERLIVES -= 1
	}
}

// GROUND COLLISIONS

checkplat = collision_rectangle(x-sprite_width/3, y, x+sprite_width/3, y+sprite_height/2, objPlatform, false, false);
if (checkplat != noone) {
	grounded = true
	grav = gravstart
	fallspeed = 0
	y = checkplat.y-checkplat.sprite_height/2-(sprite_height/2);
} else {
	grounded = false
}

// SPAWN PROTECTION DISABLE
if (keyboard_check(ord("A")) or keyboard_check(ord("W")) or keyboard_check(ord("D"))) and spawnprotection {
	alarm[1] = 1
}

// MOVE

if keyboard_check_pressed(ord("A")) and multiplier > -multicap {
	multiplier -= multistep
	sprite_set_speed(0, spritespeed, spritespeed_framespersecond)
}
if keyboard_check_pressed(ord("D")) and multiplier < multicap {
	multiplier += multistep
	sprite_set_speed(0, spritespeed, spritespeed_framespersecond)
}

if keyboard_check(ord("A")) and alarm[0] == -2 and multiplier > -multicap {
	alarm[0] = alarmwait * room_speed
}
if keyboard_check(ord("D")) and alarm[0] == -2 and multiplier < multicap {
	alarm[0] = alarmwait * room_speed
}

if keyboard_check_released(ord("A")) {
	alarm[0] = -2
}
if keyboard_check_released(ord("D")) {
	alarm[0] = -2
}

x += horizspeed * multiplier

if multiplier == 0 {
	sprite_set_speed(0, 0, spritespeed_framespersecond)
}

// FLAP

if keyboard_check_pressed(ord("W")) {
	if grounded {
		grounded = false
		fallspeed = -jumpstrength
	} else {
		if grav > flightcap {
			grav -= flapstrength
		}
	}
}

// BONK (LEFT)

checkplat = collision_rectangle(x, y - sprite_height/3, x - sprite_height/3, y + sprite_height/3, objPlatform, false, false)
if checkplat != noone and multiplier < 0 {
	x = checkplat.x + checkplat.sprite_width/2 + sprite_width/2;
	multiplier *= -1;
}

// BONK (RIGHT)

checkplat = collision_rectangle(x, y - sprite_height/3, x + sprite_height/3, y + sprite_height/3, objPlatform, false, false)
if checkplat != noone and multiplier > 0 {
	x = checkplat.x - checkplat.sprite_width/2 - sprite_width/2;
	multiplier *= -1;
}

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

// GRAVITY

if !grounded {
	if grav < gravstart {
		grav += gravreturn
	}
	y += fallspeed
	fallspeed += grav
}