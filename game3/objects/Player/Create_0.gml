/// @description Initiallise
XAxis = 0;
YAxis = 0;
Speed = 2;
State = StateIDLE;

Direction = DOWN;
Action = IDLE;

View[HORIZONTAL,IDLE] = ViewPlayerIdleSide;
View[HORIZONTAL,MOVE] = ViewPlayerMoveSide;

View[UP,IDLE] = ViewPlayerIdleUp;
View[UP,MOVE] = ViewPlayerMoveUp;

View[DOWN,IDLE] = ViewPlayerIdleDown;
View[DOWN,MOVE] = ViewPlayerMoveDown;