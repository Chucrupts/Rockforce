/// @description part system create

partDirt_sys = part_system_create();

//Blood Particle
partDirt = part_type_create();
part_type_shape(partDirt,pt_shape_square);
part_type_size(partDirt,.06,.09,0,0);
part_type_colour_rgb(partDirt, 120, 120, 120, 120, 120, 120);
part_type_alpha1(partDirt,1);
part_type_speed(partDirt,1,3,0,0);
//part_type_direction(partBlood,180,270,0,0);
part_type_direction(partDirt,0,270,0,0);
part_type_gravity(partDirt,0.2,270);
part_type_blend(partDirt,0);
part_type_life(partDirt,20,30);

//Create Emitter
partDirt_emit = part_emitter_create(partDirt_sys);



