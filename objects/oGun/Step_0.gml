 /// @description Insert description here

var imageAngle  = 0;
var bulletCreation = 0;
if (image_xscale < 0) imageAngle	  = 180; else imageAngle     = 0;
if (image_xscale < 0) bulletCreation  = -4; else bulletCreation  = +4;
	
recoil		= 0;
firingdelay = firingdelay - 1;

if (fire) && (firingdelay < 0)
{
	ScrScreenShake(2, 10)
	recoil		= 3;
	firingdelay = 6;
	with (instance_create_layer(x + bulletCreation, y + 4, "Bullet", oBullet))
	{
		speed = 8;
		direction = imageAngle + random_range(-1,1);
		image_xscale = other.image_xscale;
	}
}

if (image_xscale < 0) x = x + recoil ;else x = x - recoil;