if(self.ai_state == 0) //hunt the player
{
	self.sprite_index = spr_crossbow_walk
	faceToTargetObject(self,obj_player)
	huntToTargetObject(self,obj_player)
	if(distance_to_object(obj_player) <= self.engageDistance)
		self.ai_state = 1
}
else if(self.ai_state == 1) //shoot at the player 
{
	self.sprite_index = spr_crossbow_attack
	faceToTargetObject(self,obj_player)
	//show_debug_message("AIStep " + string(self.faceX) + " " + string(self.faceY))
	if(self.canShoot && checkInView(self))
	{
		throwAtTarget(self,obj_player,self.type_of_ammo)
		alarm[SHOT_RELOAD_ALARM] = room_speed * self.shot_cooldown
		alarm[1] = room_speed * self.shot_cooldown
		self.canShoot = false
		self.ai_state = 2
		self.sprite_index = spr_crossbow_setup
	}
	
	if(distance_to_object(obj_player) >= self.engageDistance + irandom_range(0,5))
		self.ai_state = 0
}
else if(self.ai_state == 2)
{
	//reloading
	//DO NOTHING BUT ANIMATION
}
else if(self.ai_state == 3)
{
	self.AIM_COUNT+=1
	self.sprite_index = spr_crossbow_base
	var new_aim_angle = point_direction(self.x, self.y, obj_player.x, obj_player.y)
	direction = lerp(direction,new_aim_angle,self.AIM_COUNT/(self.aim_time * 100))
	self.image_angle = direction
	self.faceX = dcos(direction)
	self.faceY = dsin(direction)
	//faceToTargetObject(self,obj_player)
}


