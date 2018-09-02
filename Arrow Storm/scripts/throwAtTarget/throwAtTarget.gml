/// @description throwAtTarget(agent, target, objectToThrow);
/// @param agent - AI Agent that has a obj_enemy_parent Parent
/// @param target - Who to throw at ... only needs built in x,y
/// @param shot - the object to shoot 
if(instance_exists(obj_player))
{
var agent = argument0
var target = argument1
var shot = argument2

//faceToTargetObject(agent,target)

//get a vector to where the player IS RIGHT NOW!
var bullet = instance_create_layer(agent.x,agent.y,"Instances",shot) //instantiate bullet
var aim = getUnitVector(target.x-agent.x, target.y-agent.y)
bullet.aimX = aim[0] //give it a vector... let it do its thing
bullet.aimY = aim[1]

//show_debug_message(string(bullet.aimX) + " " + string(bullet.aimY ))
}