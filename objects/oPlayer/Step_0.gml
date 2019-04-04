
// Basic Scripts
ScrMove();
ScrCollision();
ScrAnimation(sPlayer, sPlayerRun, sPlayerJump);

if (hspd != 0) oGun.image_xscale = sign(hspd);



oGun.y = y + 2;
oGun.x = x;