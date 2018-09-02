/// @description AI brain and action

if(self.ai_state == 0) //hunt the player
{
	self.sprite_index = spr_alchemist_walk
	var distance_target = distance_to_object(obj_player)
	faceToTargetObject(self,obj_player)
	if(distance_target >= self.engageDistance)
	{
		huntToTargetObject(self,obj_player)
	}
	else
	{
		var vectTarget = getUnitVector(obj_player.x-self.x, obj_player.y-self.y)
		var repoX = -1 * vectTarget[0]
		var repoY = -1 * vectTarget[1]
		
		repoX = (repoX * self.engageDistance) + self.x
		repoY = (repoY * self.engageDistance) + self.y
		
		huntToTargetPosition(self, repoX, repoY)
		
	}
	
	if(distance_target <= self.engageDistance && distance_target >= self.reposition_threshold * self.engageDistance)
	{
		self.ai_state = 2
	}
}
else if(self.ai_state == 1) //shoot at the player 
{
	self.sprite_index = spr_alchemist_attack
	faceToTargetObject(self,obj_player)
	//show_debug_message("AIStep " + string(self.faceX) + " " + string(self.faceY))
	if(self.canShoot && checkInView(self))
	{
		throwAtTarget(self,obj_player,self.type_of_ammo)
		alarm[SHOT_RELOAD_ALARM] = room_speed * self.shot_cooldown
		self.canShoot = false
	}
	
	if(distance_to_object(obj_player) <= self.reposition_threshold * self.engageDistance)
		self.ai_state = 3
	else if(distance_to_object(obj_player) >= self.engageDistance)
		self.ai_state = 3
}
else if(self.ai_state == 2) //set up and transition to attack
{
	self.sprite_index = spr_alchemist_setup
	alarm[1] = room_speed * self.set_up_time
	self.ai_state = 9
}
else if(self.ai_state == 3) //set up and transition to move
{
	self.sprite_index = spr_alchemist_base
	alarm[2] = room_speed * self.uproot_time
	self.ai_state = 9
}
else if(self.ai_state == 9)
{
	//holding pattern for alarms
	faceToTargetObject(self,obj_player)
}


