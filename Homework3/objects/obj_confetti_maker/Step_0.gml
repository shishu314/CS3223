/// @description Insert description here
// You can write your code in this editor
++spawnTimer;
if(spawnTimer >= spawnTime) {
	spawnTimer = random_range(0, spawnTime);
	SpawnConfettiParticles(x, y, 50);
	x = irandom_range(0, room_width);
	y = irandom_range(0, room_height);
}