// This is the actual reposition of the assassin

// PLAY SOUND CLIP HERE

show_debug_message("BLINK!")
var lowX = obj_player.x - self.engageDistance
var hiX = obj_player.x + self.engageDistance
var lowY = obj_player.y - self.engageDistance
var hiY = obj_player.y + self.engageDistance

do
{
	self.x = irandom_range(lowX,hiX)
	self.y = irandom_range(lowY,hiY)
}
until(distance_to_object(obj_player) > self.minimum_teleport_distance)

self.abilityCoolDown = room_speed * (3.0 + random_range(0,5))
alarm[2] = self.abilityCoolDown
self.ai_state = 1 //attack

//SPAWN ARRIVAL EFFECT HERE