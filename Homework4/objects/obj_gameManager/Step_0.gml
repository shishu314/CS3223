/// @description Insert description here
// You can write your code in this editor
if(room == StartScreen || room == InstructionScreen || room == EndScreen) {
	if(keyboard_check_pressed(vk_space)) {
		NextLevel();
		score = 0;
		lives = 3;
	}
}

if(room == Level1 || room == Level2 || room == Level3) {
	global.gruntMovementTime -= 0.025;
	if(instance_nearest(x, y, obj_grunt) == noone) {
		NextLevel();
	}
	if(lives <= 0){
		room_goto(EndScreen);
	}
}