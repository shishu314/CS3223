/// @description Insert description here
// You can write your code in this editor
var rand = irandom_range(0, 4);
switch(rand) {
	case 0:
		sprite_index = spr_confetti_blue;
		break;
	case 1:
		sprite_index = spr_confetti_green;
		break;
	case 2:
		sprite_index = spr_confetti_pink;
		break;
	case 3:
		sprite_index = spr_confetti_red;
		break;
	case 4:
		sprite_index = spr_confetti_yellow;
		break;
}

scale_amt = random_range(.1, .5)
image_xscale = scale_amt
image_yscale = scale_amt

size_decay = random_range(.001, .005)

yspd = random_range(-3, -7)
xspd = random_range(-2, 2)

grav = 0.2