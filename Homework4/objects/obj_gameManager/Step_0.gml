/// @description Insert description here
// You can write your code in this editor
if(room == StartScreen || room == InstructionScreen) {
	if(keyboard_check_pressed(vk_space)) {
		NextLevel();
	}
}