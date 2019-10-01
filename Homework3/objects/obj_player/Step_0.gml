if(!isDying){
	if(keyboard_check(ord("W"))) {
		if(instance_position(x, y, obj_door)) {
			NextLevel();
		}
	}


	if keyboard_check(ord("A")){
								// if pressing A..
		mspd = -4
	    image_xscale = -1									//flip the sprite to face left
	    if grounded{
	        sprite_index= spr_snowman_run
	    }
	}else
	if keyboard_check(ord("D")){
		mspd = 4
	    image_xscale = 1									//flip the sprite to face right
	    if grounded{										//only change to walking sprite if on the ground
	        sprite_index= spr_snowman_run
	    }
	}else{			
											//if not pressing either direction..
		mspd = 0
		if grounded{										//..and on the ground.. 
	        sprite_index= spr_snowman_idle					//..show idle animation!
	    }
	}
	if instance_position(x+mspd,y-16,obj_platform){
	    mspd = 0
	}
	x += mspd


	if not keyboard_check(vk_space) {
		spacePressing = false
		jump_timer = jump_time
	}

	if grounded{											// if player is touching the ground or platform
	    jump_timer = 0
		jump_amt = 0										// set our jump value to 0 so we don't move
    
	    if keyboard_check_pressed(vk_space){				//check for jump key only if on the ground
	        jump_amt = jump_max
			y -= jump_amt
			spacePressing=true
			grounded=false									// we're not on the ground anymore!
	    }
    
	}else{													// if player is NOT on the ground
	    y -= jump_amt										// move player upward by the current jump value
		if(jump_timer >= jump_time) {
			jump_amt -= grav_amt
		} else {
			jump_amt += grav_amt							// reduce the jump strength by gravity, this gives the arc    
		}
		jump_timer += 1/room_speed
	    if jump_amt > 0{									// use jump sprite for jump, fall sprite for fall!
	        sprite_index= spr_snowman_jump
	    }else{
	        sprite_index= spr_snowman_fall
	    }
	}

	if(jump_amt<=0){
		hit_plat = instance_position(x, y+jump_max, obj_platform)
		if(hit_plat != noone) {
			y = hit_plat.y -1
			grounded = true
		} else {
			grounded = false
		}
	}
	/*
	if instance_position(x,y+jump_max,obj_platform){				// check to see if there is a platform below player
	    near_plat= instance_nearest(x,y+jump_max,obj_platform)		// save a reference to that platform as new variable
	    y = near_plat.y-1									// set the player on top of that platform
	    grounded=true										// player is on the ground!
	}else{													// if there is nothing underneath the player, they aren't on the ground!
	    grounded=false
	}
	*/

	if !grounded
	and jump_amt>0{
	    if instance_position(x,y-32-jump_amt,obj_platform){
	        jump_amt=0
			jump_timer = jump_time
	    }
	}

	if(collision_circle(x, y, sprite_width/2, obj_enemy, false, false)) {
		isDying = true
		sprite_index = spr_snowman_melt
	}

	if(x - sprite_width/2 < 0 || x + sprite_width/2 > room_width || y+sprite_height < 0 || y-sprite_height > room_height) {
		GameOver();
	}
}

if(isDying) {
	--deathTimer;
	if(deathTimer <= 0) {
		GameOver();
	}
}