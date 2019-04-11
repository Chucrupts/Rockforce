/// @description part system create

partBlood_sys = part_system_create();

//Blood Particle
partBlood = part_type_create();
part_type_shape(partBlood,pt_shape_square);
part_type_size(partBlood,.05,.05,0,0);
part_type_colour_rgb(partBlood, 149, 183, 149, 183, 149, 183);
part_type_alpha1(partBlood,1);
part_type_speed(partBlood,1,3,0,0);
//part_type_direction(partBlood,180,270,0,0);
part_type_direction(partBlood,0,270,0,0);
part_type_gravity(partBlood,0.2,270);
part_type_blend(partBlood,0);
part_type_life(partBlood,20,30);

//Create Emitter
partBlood_emit = part_emitter_create(partBlood_sys);



