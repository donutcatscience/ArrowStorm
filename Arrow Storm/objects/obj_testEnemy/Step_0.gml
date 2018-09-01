/// @description Insert description here
// You can write your code in this editor


// this is used to give room for the delay between attacks
if(canBeDamaged)
{
	if(damage and damageDelay = 0)
	{
		hp--
	
		canBeDamaged = false
	
		damageDelay++
	}
}
else
{
	damage = false
}
// delay between attacks
if(damageDelay > 0)
{
	damageDelay++
	
	if(damageDelay >= room_speed/attackSpeed)
	{
		canBeDamaged = true
		damageDelay = 0
	}
}


if(hp <= 0)
{
	instance_destroy(self)
}
