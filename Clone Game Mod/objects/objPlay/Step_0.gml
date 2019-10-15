if collision_rectangle(x-(sprite_width/2), y-(sprite_height/2), x+(sprite_width/2), y+(sprite_height/2), objPlayer, false, false) != noone {
	room_goto_next()
}