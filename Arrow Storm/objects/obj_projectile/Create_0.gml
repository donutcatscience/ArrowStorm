/// @description Insert description here


startPointX = x
startPointY = y

if(instance_exists(obj_player))
{
	destPointX = obj_player.x
	destPointY = obj_player.y
}
else
{
	destPointX = x
	destPointY = y
}
deflected = false

image_angle = point_direction(startPointX,startPointY,destPointX,destPointY)

projectileSpeed = 2

move_towards_point(destPointX,destPointY,projectileSpeed)