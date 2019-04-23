
// Basic Scripts

if (os_type = os_android) ScrMove(); else  ScrMovePC();


ScrPlayerCollision();
ScrPlayerAnimation(sPlayer, sPlayerRun, sPlayerJump);



oGun.image_xscale = image_xscale;

oGun.y = y;
oGun.x = x;

