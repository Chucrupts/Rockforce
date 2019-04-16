
// Basic Scripts

if (os_type = os_android) ScrMove(); else  ScrMovePC();

ScrPlayerCollision();
ScrAnimation(sPlayer, sPlayerRun, sPlayerJump);

if (hspd != 0) oGun.image_xscale = sign(hspd);

oGun.y = y;
oGun.x = x;

