var player_x = obj_player.x;
var player_y = obj_player.y
var predict_time = 10;
var some_threshold = 150;
var player_x_future = player_x + obj_player.hspeed + predict_time;
var player_y_future = player_x + obj_player.vspeed + predict_time;

var target_x = player_x_future;

var target_y = player_y_future;

if (distance_to_point(player_x_future, player_y_future) > 
some_threshold){
	
	target_x = player_x;
	target_y = player_y;
}



direction = point_direction(x, y, player_x, player_y);
speed = .99;
hspeed = lengthdir_x(speed, direction);
vspeed = lengthdir_y(speed, direction);