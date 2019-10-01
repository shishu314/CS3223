/// @description Insert description here
// You can write your code in this editor

if(room == DeathScreen || room == StartScreen || room == VictoryScreen) {
	if(keyboard_check_pressed(vk_space)) {
		NextLevel();
	}
}

if(keyboard_check_pressed(ord("N"))) {
	NextLevel();
}

if(room == DeathScreen) {
	if(keyboard_check_pressed(ord("R"))) {
		room_goto(global.currentLevel);
	}
}