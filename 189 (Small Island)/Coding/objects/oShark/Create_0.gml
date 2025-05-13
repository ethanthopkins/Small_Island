randomize();
playerSighted = false;
alarm[0] = room_speed * 2;
alarm[1] = room_speed * random_range(3,10);
inst = noone;
atTarget = true;
inst = instance_find(oTarget, irandom(instance_number(oTarget) - 1));
rspd = 1;
attackTarget = false










state = "idle";
view_distance = 100;
grv = 2;
vMove = 0;
hasJumped = false;
pathStarted = false;