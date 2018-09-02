/// @function capVectorToSize(vx,vy,maxSize);
/// @description takes in a vector and caps it to a maximum size if necessary.  This will cause a square-root call.  Returns capped/uncapped vector as small array
/// @param vx X component of vector
/// @param vy Y component of vector
/// @param size Size to cap to


var vx = argument0
var vy = argument1
var size = argument2

if(getVectorMagnitude(vx,vy)>size)
{
	var unit = getUnitVector(vx,vy)

	var newV
	newV[0] = unit[0]*size
	newV[1] = unit[1]*size
	return newV
}
else
{
	var newV
	newV[0] = vx
	newV[1] = vy
	return newV
}