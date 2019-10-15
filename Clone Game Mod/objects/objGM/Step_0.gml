enemyleft = instance_nearest(x, y, objEnemy)

if enemyleft == noone and alarm[0] == -2 {
	midspawncount = 0
	global.WAVENUM += 1
	global.ENEMYCOUNT += global.WAVESPAWNCOUNT
	alarm[0] = room_speed * wavedelay
}

if global.PLAYERLIVES <= 0 and alarm[1] == -2 {
	alarm[1] = room_speed * wavedelay
}

if room == rmTitle {
	instance_destroy()
}