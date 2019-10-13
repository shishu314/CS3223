if(room == StartScreen) {
	room_goto(InstructionScreen);
}

if(room == InstructionScreen) {
	lives = 3;
	score = 0;
	global.gruntMovementTime = 0.5 * room_speed;
	room_goto(Level1);
}

if(room == Level1) {
	global.gruntMovementTime = 0.5 * room_speed;
	room_goto(Level2);
}

if(room == Level2) {
	global.gruntMovementTime = 0.5 * room_speed;
	room_goto(Level3);
}

if(room == Level3) {
	room_goto(WinScreen);
}

if(room == EndScreen || room == WinScreen) {
	room_goto(StartScreen);
}