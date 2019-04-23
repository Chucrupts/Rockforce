/// Inicialisation vars
hspd = 0;
vspd = 0;
grv = 0.3;
walkspd = 2;
firingdelay = 0;
recoil = 3;

enum states {
	idle,
	wander,
	attack	
}

state = states.idle;
counter = 0;
counter_attack = 0;
begin_position = x;
enemy_vision = instance_create_layer(x, y, "Enemies", oEnemyVision);
enemy_gun    = instance_create_layer(x, y, "EnemiesGun", oEnemyGun);
image_xscale = -1;
enemy_gun.image_xscale = -1;
