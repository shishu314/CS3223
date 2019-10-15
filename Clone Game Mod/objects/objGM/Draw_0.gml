draw_set_color(c_white)

draw_text_transformed(30, 30, string(global.PLAYERSCORE), 3, 3, 0)

if room == rmGame {
	draw_text_transformed(1030, 30, "LIVES: " + string(global.PLAYERLIVES), 3, 3, 0)
	if enemyleft == noone {
		draw_text_transformed(x, y, "WAVE " + string(global.WAVENUM), 6, 6, 0)
	}
	if keyboard_check(ord("P")) and global.PLAYERLIVES > 0 {
		instance_destroy(objPlayer)
		room_goto(0)
	}
}

else if room == rmScore {
	draw_text_transformed(1000, 30, "GAME OVER", 3, 3, 0)
}
