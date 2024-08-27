if (lifetime > 0) {
	lifetime--;
} else { 
	instance_destroy();
}

var enemy = instance_place(x, y, obj_goblin);

if (enemy != noone){
	enemy.hp -= 10
	instance_destroy();
}
if (enemy != noone) {
	enemy.hp -= 10;
	obj_goblin.speed = -5;
	
	instance_destroy();
}