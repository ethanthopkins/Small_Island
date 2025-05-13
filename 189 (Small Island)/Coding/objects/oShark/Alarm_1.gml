attackPlayer = true;
attackTarget = choose(oPlayerCol,oWalkingCol);
turtInst = instance_find(attackTarget, irandom(instance_number(attackTarget) - 1));
alarm_set(1, (room_speed * random_range(3,10)));