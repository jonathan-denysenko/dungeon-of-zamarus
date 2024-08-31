
path_delete(path);
path = path_add();


target_x = obj_player.x;
target_y = obj_player.y;



mp_grid_path( obj_setup_pathway.grid, path, x,y, target_x, target_y, 1 );

path_start(path, 1.5, path_action_stop, false);

alarm_set(0, 15)