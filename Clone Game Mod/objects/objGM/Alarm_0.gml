if midspawncount < global.ENEMYCOUNT {
	randomize()
	randomspawn = global.SPAWNERS[irandom(2)]
	var enemyType = irandom(5);
	switch(enemyType) {
		case 0:
			instance_create_depth(randomspawn.x, randomspawn.y, 1, objSpikeBall)
			break;
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
			instance_create_depth(randomspawn.x, randomspawn.y, 1, objUpEnemy)
			midspawncount += 1
			break;
		default:
			break;
	}
	alarm[0] = room_speed * spawndelay
} else {
	alarm[0] = -2
}