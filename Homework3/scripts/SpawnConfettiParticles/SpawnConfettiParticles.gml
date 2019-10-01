_x = argument0
_y = argument1
_amt = argument2

for(var i = 0; i < _amt; i++) {
	instance_create_depth(_x, _y, -1, obj_confetti);
}