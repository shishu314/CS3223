if(room == StartScreen) {
	room_goto(InstructionScreen);
}

if(room == InstructionScreen) {
	room_goto(Level1);
}

if(room == Level1) {
	global.gruntMovementTime = 0.5 * room_speed;
}