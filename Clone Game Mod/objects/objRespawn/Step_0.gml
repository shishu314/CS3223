if instance_find(objPlayer, 0) == noone and global.PLAYERLIVES > 0 and alarm[0] < 0 {
	randomize()
	alarm[0] = room_speed * random_range(alarmlower, alarmupper)
}