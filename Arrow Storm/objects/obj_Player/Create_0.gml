
// movement speed
moveSpeed = 5

enum playerState{ shield, lance}

state = playerState.shield

lance = instance_create_layer(x,y,"Instances",obj_lance)
instance_deactivate_object(lance)

shield = instance_create_layer(x,y,"Instances",obj_shield)

// player health
hp = 100

tick = false;
tickTimer = 0;
ticksPerSecond = 3

