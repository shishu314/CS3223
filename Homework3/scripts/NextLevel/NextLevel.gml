/// @description Insert description here
// You can write your code in this editor
if(room == StartScreen) {
	obj_backgroundSet.alpha = 0;
	room_goto(Level1);
}
if(room == Level1){
	obj_backgroundSet.alpha = 0;
	room_goto(Level2);
}

if(room == Level2) {
	obj_backgroundSet.alpha = 0;
	room_goto(Level3);
}

if(room == Level3) {
	room_goto(VictoryScreen);
}

if(room == DeathScreen || room == VictoryScreen) {
	room_goto(StartScreen);
}

