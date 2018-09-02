/// @description throwAtTarget(vx, vy);
/// @param vx - Vector X
/// @param vx - Vector Y

var vx = argument0
var vy = argument1

var dx = vx*vx
var dy = vy*vy

var dist = sqrt(dx + dy)

var result
result[0] = vx / dist
result[1] = vy / dist

return result