GetInput();

if (XAxis!=0 || YAxis!=0) 
	Action = MOVE;
else 
	Action = IDLE;

if (XAxis !=0) 
{
	Direction = HORIZONTAL;
	if (XAxis > 0) 
		image_xscale = 1;
	else 
		image_xscale = -1;
}
	
if (YAxis != 0)
{
	image_xscale = 1;
	if (YAxis > 0) 
		Direction = DOWN;
	else if (YAxis < 0)
		Direction = UP;
}


var _direction = point_direction(0, 0, XAxis, YAxis);
var _length = Speed * (XAxis != 0 || YAxis != 0);

XAxis = lengthdir_x(_length, _direction);
YAxis = lengthdir_y(_length, _direction);
show_debug_message(string(XAxis));



if (place_meeting(x+XAxis, y, ObjCollision))
{
	while (!place_meeting(x+sign(XAxis), y, ObjCollision))
	{
		x += sign(XAxis);
	}
	XAxis = 0;
}
x += XAxis;

if (place_meeting(x, y+YAxis, ObjCollision))
{
	while (!place_meeting(x, y+sign(YAxis), ObjCollision))
	{
		y += sign(YAxis);
	}
	YAxis = 0;
}
y += YAxis;
//MoveCollide(XAxis, YAxis, ObjCollision);