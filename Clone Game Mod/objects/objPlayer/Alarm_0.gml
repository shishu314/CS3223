if keyboard_check(ord("A")) and multiplier > -multicap {
	multiplier -= multistep
	alarm[0] = alarmwait * room_speed
} else if keyboard_check(ord("D")) and multiplier < multicap {
	multiplier += multistep
	alarm[0] = alarmwait * room_speed
} else if (keyboard_check(ord("A")) and multiplier <= -multicap) or stunned {
	alarm[0] = -2
} else if (keyboard_check(ord("D")) and multiplier >= multicap) or stunned {
	alarm[0] = -2
}