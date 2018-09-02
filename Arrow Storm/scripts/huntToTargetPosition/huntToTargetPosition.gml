/// @description huntToTargetObject(agent, target);
/// @param agent - AI Agent that has a obj_enemy_parent Parent
/// @param px - xPosition of target
/// @param py - yPosition of target

if(instance_exists(obj_player))
{
var agent = argument0
var px = argument1
var py = argument2

/*
var o_x = agent.xVel
var o_y = agent.yVel

var aim = getUnitVector(target.x-agent.x, target.y-agent.y)
agent.u_xVel = aim[0]
agent.u_yVel = aim[1]

var xVel = agent.u_xVel * agent.mySpeed
var yVel = agent.u_yVel * agent.mySpeed

agent.xVel = xVel-o_x
agent.yVel = yVel-o_y


agent.x += agent.xVel
agent.y += agent.yVel
*/

//This is doing "all" of the calculation
// The steering force is being calculated and then resolved all in this script

//calculated the desired vector of moevement
var desired = getUnitVector(px-agent.x, py-agent.y)
//scale it to MAX!
desired[0]*=agent.mySpeed
desired[1]*=agent.mySpeed

//calculte the steering vector
var steerX = desired[0] - agent.xVel
var steerY = desired[1] - agent.yVel

//var steer_size = getVectorMagnitude(steerX,steerY)
//var capSteer = capVectorToSize(steerX,steerY,agent.mySpeed)
//steerX = capSteer[0]
//steerY = capSteer[1]


//show_debug_message(delta_time/100000)

//adjust as acceleration
agent.xVel += steerX * (delta_time/100000)
agent.yVel += steerY * (delta_time/100000)

//don't let the speed get too high
newVel = capVectorToSize(agent.xVel, agent.yVel, agent.mySpeed)
agent.xVel = newVel[0]
agent.yVel = newVel[1]

agent.x += agent.xVel
agent.y += agent.yVel



}