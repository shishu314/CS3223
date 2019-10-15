// FLAP

if grounded {
	grounded = false
	fallspeed = -jumpstrength
} else {
	if grav > flightcap {
		grav -= flapstrength
	}
}

randomize()
alarm[0] = room_speed * random_range(0.05, 0.2)