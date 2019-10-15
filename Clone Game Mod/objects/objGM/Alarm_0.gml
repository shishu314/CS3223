if midspawncount < global.ENEMYCOUNT {
	randomize()
	randomspawn = global.SPAWNERS[irandom(2)]
	instance_create_depth(randomspawn.x, randomspawn.y, 1, objEnemy)
	midspawncount += 1
	alarm[0] = room_speed * spawndelay
} else {
	alarm[0] = -2
}