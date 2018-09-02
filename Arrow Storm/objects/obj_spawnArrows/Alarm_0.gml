switch(irandom(1))
{
	// x is either 0 or room width
	case 0:
	switch(irandom(1))
	{
		case 0:
		x = 0
		break
		case 1:
		x = room_width
		break
	}
	y = irandom_range(0,room_height)
	break
	
	case 1:
	switch(irandom(1))
	{
		case 0:
		y = 0
		break
		case 1:
		y = room_height
		break
	}
	x = irandom_range(0,room_width)
	break
}



alarm[0] = room_speed * secondsPerTeleport

instance_create_layer(x,y,"projectiles",obj_bolt)