if midspawncount < global.ENEMYCOUNT {
	randomize()
	randomspawn = global.SPAWNERS[irandom(2)]
	var randInt = irandom(7);
	if(randInt == 0 ){
		instance_create_depth(randomspawn.x, randomspawn.y, 1, objSpikeBall)
	} else if(randInt == 1){
		instance_create_depth(randomspawn.x, randomspawn.y, 1, objMarshmallow)
	} else {
		instance_create_depth(randomspawn.x, randomspawn.y, 1, objUpEnemy)
		midspawncount += 1
	}
	alarm[0] = room_speed * spawndelay
} else {
	alarm[0] = -2
}