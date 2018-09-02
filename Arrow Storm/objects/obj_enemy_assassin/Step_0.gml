
if(self.ai_state == 0) // hunter state
{
	self.sprite_index = spr_assassin_walk
	faceToTargetObject(self,obj_player)
	huntToTargetObject(self,obj_player)
	
	// if the enemy gets within distance choose a behavior
	if(distance_to_object(obj_player) <= self.engageDistance)
	{
		if(self.canTeleport)
			self.ai_state = 2
		else
			self.ai_state = 1
	}
}
else if(self.ai_state == 1) // this is the attack state
{
	self.sprite_index = spr_assassin_attack
	faceToTargetObject(self,obj_player)
	//show_debug_message("AIStep " + string(self.faceX) + " " + string(self.faceY))
	if(self.canShoot && checkInView(self)) //shoot when  you can shoot
	{
		throwAtTarget(self,obj_player,self.type_of_ammo)
		alarm[SHOT_RELOAD_ALARM] = room_speed * self.shot_cooldown
		self.canShoot = false
		
		if(self.canTeleport) //if I can teleport after shooting ... do so
			self.ai_state = 2
	}
	
	//if the player gets away, hunt them down again
	if(distance_to_object(obj_player) >= self.engageDistance + irandom_range(0,5))
		self.ai_state = 0
}
else if(self.ai_state == 2) //engage the channel time
{
	//SPAWN TELEPORT AFFECT HERE
	//PLAY SOUND HERE
	self.x = -1000
	
	self.sprite_index = spr_assassin_setup
	alarm[1] = room_speed * self.abilityCoolDown //set alarm 
	
	self.ai_state = 3 
	self.canTeleport = false
	//alarm will do blink??
}
else if(self.ai_state == 3) //channeling state
{
	faceToTargetObject(self,obj_player)
}
