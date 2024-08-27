image_angle = 0.00
var _right_key = keyboard_check(vk_right);
var _left_key = keyboard_check(vk_left);
var _up_key = keyboard_check(vk_up);
var _down_key = keyboard_check(vk_down);





var _xspeed =(_right_key - _left_key) * _movespeed;
var _yspeed =(_down_key - _up_key) * _movespeed;




if (_xspeed != 0 && _yspeed != 0) {
	var _diagonal_factor = sqrt(0.5); 
	_xspeed *= _diagonal_factor;
	_yspeed *= _diagonal_factor;
}


x += _xspeed;
y += _yspeed;





//Check rooom boundaries

if (x < 0){x = 0};


if (x > room_width - sprite_width) {x = room_width - sprite_width};

if (y < 0) {y = 0};

if (y > room_height - sprite_height) {y = room_height-sprite_height};




