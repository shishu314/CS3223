--lives;
#region player
var player = instance_find(obj_player, 0);
player.x = player.initialX;
player.y = player.initialY;
#endregion
#region grunt
var gruntIndex = 0;
var grunt = instance_find(obj_grunt, gruntIndex);
while(grunt) {
	grunt.x = grunt.initialX;
	grunt.y = grunt.initialY;
	++gruntIndex;
	grunt = instance_find(obj_grunt, gruntIndex);
}
global.gruntMovementTime = 0.5 * room_speed;
#endregion
#region hulk
var hulkIndex = 0;
var hulk = instance_find(obj_hulk, hulkIndex);
while(hulk) {
	hulk.x = hulk.initialX;
	hulk.y = hulk.initialY;
	hulk.moveTimer = hulk.moveTime;
	++hulkIndex;
	hulk = instance_find(obj_hulk, hulkIndex);
}
#endregion