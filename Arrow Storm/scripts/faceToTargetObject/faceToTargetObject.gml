/// @description faceToTargetObject(agent, target);
/// @param agent - AI Agent that has a obj_enemy_parent Parent
/// @param target - What to look at ... only needs built in x,y

if(instance_exists(obj_player))
{

var agent = argument0
var target = argument1
agent.direction = point_direction(agent.x, agent.y, target.x, target.y)
agent.image_angle = direction
agent.faceX = dcos(direction)
agent.faceY = dsin(direction)
}