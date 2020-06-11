TargetX = Player.x - x;
TargetY = Player.y - y;

var _targetX = sign(TargetX) * Speed;
var _targetY = sign(TargetY) * Speed;

MoveCollide(_targetX, _targetY, ObjCollision);

