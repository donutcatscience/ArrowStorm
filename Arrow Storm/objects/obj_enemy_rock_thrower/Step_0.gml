if(self.ai_state == 0) //hunt the player
{
	self.sprite_index = spr_rockthower_walk
	faceToTargetObject(self,obj_player)
	huntToTargetObject(self,obj_player)
	if(distance_to_object(obj_player) <= self.engageDistance)
		self.ai_state = 1
}
else if(self.ai_state == 1) //shoot at the player 
{
	self.sprite_index = spr_rockthower_attack
	faceToTargetObject(self,obj_player)
	//show_debug_message("AIStep " + string(checkInView(self)))
	if(self.canShoot && checkInView(self))
	{
		//show_debug_message("shooting!!")
		throwAtTarget(self,obj_player,self.type_of_ammo)
		alarm[SHOT_RELOAD_ALARM] = room_speed * self.shot_cooldown
		self.canShoot = false
	}
	
	if(distance_to_object(obj_player) >= self.engageDistance + irandom_range(0,5))
		self.ai_state = 0
}

