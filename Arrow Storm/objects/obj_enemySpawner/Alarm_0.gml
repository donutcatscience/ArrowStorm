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


// Prevent too many enemies on the screen
var enemieCount = instance_number(obj_enemy_parent);

// Determine what to spawn
if (instance_exists(obj_player) && (enemieCount <= 50)) {
	randomEnemy = irandom_range(1,100);
	if ((randomEnemy <= 40)) {
		instance_create_layer(x,y,"Enemies",obj_enemy_rock_thrower)
	}
	else if ((randomEnemy >= 41) && (randomEnemy <= 65)) {
		instance_create_layer(x,y,"Enemies",obj_enemy_crossbow);
	}
	else if ((randomEnemy >= 66) && (randomEnemy <= 85)) {
		instance_create_layer(x,y,"Enemies",obj_enemy_javalin_thrower);
	}
	else if ((randomEnemy >= 86) && (randomEnemy <= 95)) {
		instance_create_layer(x,y,"Enemies",obj_enemy_alchemist);
	}
	else {
		instance_create_layer(x,y,"Enemies",obj_enemy_assassin);
	}
}

// Reset alarm
alarm[0] = relocateTime;