/// @description Insert description here


startPointX = x
startPointY = y

destPointX = obj_player.x
destPointY = obj_player.y

deflected = false

image_angle = point_direction(startPointX,startPointY,destPointX,destPointY)


//TODO: normailize slope
rise = (destPointY - startPointY)/100
run = (destPointX - startPointX)/100
