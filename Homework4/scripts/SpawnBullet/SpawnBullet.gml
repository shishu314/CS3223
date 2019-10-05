_direction = argument0;
_x = argument1;
_y = argument2;
_bulletSpeed = argument3;

var bullet = instance_create_depth(_x, _y, 0, obj_bullet);
switch(_direction){
	case "Top":
		bullet.ySpeed = -_bulletSpeed;
		bullet.rotation = 0;
		break;
	case "TopLeft":
		bullet.ySpeed = -sin(3*pi/4) * _bulletSpeed;
		bullet.xSpeed = cos(3*pi/4) * _bulletSpeed;
		bullet.rotation = 45;
		break;
	case "TopRight":
		bullet.ySpeed = -sin(pi/4) * _bulletSpeed;
		bullet.xSpeed = cos(pi/4) * _bulletSpeed;
		bullet.rotation = -45;
		break;
	case "Left":
		bullet.xSpeed = -_bulletSpeed;
		bullet.rotation = 90;
		break;
	case "Right":
		bullet.xSpeed = _bulletSpeed;
		bullet.rotation = -90;
		break;
	case "BotLeft":
		bullet.ySpeed = -sin(5*pi/4) * _bulletSpeed;
		bullet.xSpeed = cos(5*pi/4) * _bulletSpeed;
		bullet.rotation = 135;
		break;
	case "Bot":
		bullet.ySpeed = _bulletSpeed;
		break;
	case "BotRight":
		bullet.ySpeed = -sin(7*pi/4) * _bulletSpeed;
		bullet.xSpeed = cos(7*pi/4) * _bulletSpeed;
		bullet.rotation = -135;
		break;
	default:
		break;
}