/// @description Handle Enemy Spawner Events
// 

// Control spawner location, ensuring it doesn't move out of the room's boundaries
// X values
spawnDistance = irandom_range(400,600);
eastWest = irandom_range(0,1);
if ((eastWest == 0) && (obj_player.x - spawnDistance > 0)) { 
	x = obj_player.x - spawnDistance;
	}
else {x = obj_player.x + spawnDistance;}

// Y values
spawnDistance = irandom_range(400,600);
northSouth = irandom_range(0,1);
if ((northSouth == 0) && (obj_player.y - spawnDistance > 0)) { 
	y = obj_player.y - spawnDistance;
	}
else {y= obj_player.y + spawnDistance;}


// Determine what to spawn
//switch irandom(4){
	
//}

// Reset alarm
alarm[0] = relocateTime;