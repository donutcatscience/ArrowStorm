/// @description faceToTargetObject(agent, target);
/// @param agent - AI Agent that has a obj_enemy_parent Parent
/// @param targetX - What to look at ... X
/// @param targetY - What to look at ... Y


var agent = argument0
var targetX = argument1
var targetY = argument2

var fx = agent.faceX
var fy = agent.faceY

var dx = targetX - agent.x
var dy = targetY - agent.y

//calculte the steering vector
var steerX = dx - fx
var steerY = dx - fy

//var steer_size = getVectorMagnitude(steerX,steerY)
//var capSteer = capVectorToSize(steerX,steerY,agent.mySpeed)
//steerX = capSteer[0]
//steerY = capSteer[1]


//show_debug_message(delta_time/100000)

//adjust as acceleration
agent.faceX += steerX * (delta_time/100000)
agent.faceY += steerY * (delta_time/100000)


agent.direction = point_direction(agent.x, agent.y, agent.x+agent.faceX, agent.y+agent.faceY)
agent.image_angle = direction
//agent.faceX = dcos(direction)
//agent.faceY = dsin(direction)