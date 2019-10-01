/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("A"))) {
	if(playerX > 0 ) {
		playerX -= 3;
	}
}

if (keyboard_check(ord("D"))) {
	if(playerX + playerWidth + 3 < 1024 ) {
		playerX += 3;
	}
}

if(mouse_check_button_pressed(mb_right)) {
	isRaining = !isRaining
}

if(isRaining) {
	if (mouse_check_button_pressed(mb_left) && ds_list_size(lightningMap) < 5) {
		ds_list_add(lightningMap, [mouse_x, 30])
	}

	for(var i = 0; i < ds_list_size(lightningMap); ++i) {
		var entry = ds_list_find_value(lightningMap, i)
		if(entry[1] == 0) {
			ds_list_delete(lightningMap, i)
			i -= 1
		} else {
			ds_list_set(lightningMap, i , [entry[0], entry[1] - 1])
		}
	}
} else {
	ds_list_clear(lightningMap);
}