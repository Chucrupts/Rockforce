/// @description Insert description here

y = oPlayer.y + 2;
x = oPlayer.x;

var imageAngle  = 0;
var bulletCreation = 0;
if (image_xscale < 0) imageAngle	  = 180; else imageAngle     = 0;
if (image_xscale < 0) bulletCreation  = -20; else bulletCreation  = +20;
	
recoil		= 0;
firingdelay = firingdelay - 1;

if (fire) && (firingdelay < 0)
{
	recoil		= 2;
	firingdelay = 6;
	with (instance_create_layer(x + bulletCreation, y + 1, "Bullet", oBullet))
	{
		speed = 8;
		direction = imageAngle + random_range(-1,1);
		image_xscale = other.image_xscale;
	}
}

if (image_xscale < 0) x = x + recoil ;else x = x - recoil;