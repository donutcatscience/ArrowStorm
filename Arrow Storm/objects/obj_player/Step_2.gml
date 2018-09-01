// rotate to face mouse
image_angle = point_direction(x,y,mouse_x,mouse_y)

// clamp within boundaries of room
x = clamp(x,0,room_width)
y = clamp(y,0,room_height)


if(mouse_check_button_pressed(mb_left))
{
	switch(state)
	{
		case playerState.shield:
			state = playerState.lance
			image_index = 1
			instance_activate_object(lance)
			instance_deactivate_object(shield)
			break
		
		case playerState.lance:
			state = playerState.shield
			image_index = 2
			instance_activate_object(shield)
			instance_deactivate_object(lance)
			break
	}
}

// have objects follow player & aim with player
lance.x = x
lance.y = y
lance.image_angle = image_angle

shield.x = x
shield.y = y
shield.image_angle = image_angle


if(tick and tickTimer = 0)
{
	audio_play_sound(Acid_Sizzle,100,false)
	hp--
	tickTimer++
	
	tick = false;
}
if(tickTimer > 0)
{
	tickTimer++
	
	if(tickTimer >= room_speed/ticksPerSecond)
	{
		tickTimer = 0
	}
}


if(hp <= 0)
{
	instance_deactivate_object(lance)
	instance_deactivate_object(shield)
	instance_deactivate_object(self)
	
}