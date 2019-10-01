/// @description Insert description here
// You can write your code in this editor

draw_set_color(brown)
draw_rectangle(0, 700, 1024, 768, false)
draw_set_color(c_green)
for(var i = 0; i < 1024; i+= 64) {
	draw_triangle(i+16, 700, i+32, 620, i+48, 700, false) 
}

layerId = layer_get_id("Background");
backgroundId = layer_background_get_id(layerId);
if(isRaining) {
	var gray = make_color_rgb(214, 213, 197)
	layer_background_blend(backgroundId, gray);
	draw_set_color(c_gray)
	draw_ellipse(playerX, 100, playerX + playerWidth, 200, false)
	draw_set_color(c_blue)
	for(var i = 0; i < 13; ++ i) {
		draw_rectangle(playerX + playerWidth/5, 210 + i * 30, playerX + playerWidth/5, 220 + i * 30, false);
	}
	for(var i = 0; i < 13; ++ i) {
		draw_rectangle(playerX + 2*playerWidth/5, 205 + i * 30, playerX + 2*playerWidth/5, 215+ i * 30, false);
	}
	for(var i = 0; i < 13; ++ i) {
		draw_rectangle(playerX + 3*playerWidth/5, 210 + i * 30, playerX + 3*playerWidth/5, 220 + i * 30, false);
	}
	for(var i = 0; i < 13; ++ i) {
		draw_rectangle(playerX + 4*playerWidth/5, 205 + i * 30, playerX + 4*playerWidth/5, 215 + i * 30, false);
	}
	draw_set_color(c_aqua)
	for(var i = 0; i < ds_list_size(lightningMap); ++i) {
		var entry = ds_list_find_value(lightningMap, i)
		var xCor = entry[0]
		draw_triangle(xCor - 10, 400, xCor+10, 300, xCor + 10, 400, false);
		draw_triangle(xCor + 10, 375, xCor+10, 475, xCor + 30, 375, false);
	}
} else {
	var skyBlue = make_color_rgb(135, 206, 235)
	layer_background_blend(backgroundId, skyBlue);
	draw_set_color(c_orange)
	draw_circle(playerX + playerWidth/2, 150, playerWidth/2, false)
}