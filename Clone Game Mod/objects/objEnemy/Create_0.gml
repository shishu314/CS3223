fallspeed = 0
grounded = false
alarm[0] = room_speed * 0.1

jumpstrength = 7.5
flapstrength = 0.5
flightcap = -0.05

gravstart = 0.098
grav = gravstart
gravreturn = 0.03

randomize()
horizspeed = random_range(3, 8)
multiplier = 1
if random_range(0,1) < 0.5 {
	horizspeed = -horizspeed
}