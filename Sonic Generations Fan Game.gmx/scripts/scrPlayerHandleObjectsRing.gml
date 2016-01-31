// ==== FUNCTION ====================================================================
// scrPlayerHandleObjectsRings()
// ==================================================================================
//
var _ObjectHandle;
if (Action==ActionHurt) exit;

// ---- Rings -----------------------------------------------------------------------
_ObjectHandle = instance_nearest(x, y, objRing);
if (_ObjectHandle != noone) 
{
if scrPlayerCollisionMainObject(x,y,_ObjectHandle)
{
if _ObjectHandle.Motion = false {
global.Score += 10;
objPlayer.BoostTimer += 1.4;
}
global.Rings += 1;
objGlobalController.RingsTimer = 100;
with (_ObjectHandle) instance_destroy();
}
}

_ObjectHandle2 = instance_nearest(x, y, objLightRing);
if (_ObjectHandle2 != noone) 
{
if scrPlayerCollisionMainObject(x,y,_ObjectHandle2)
{
if (_ObjectHandle2.image_alpha) == 1
{
global.Score += 10;
objPlayer.BoostTimer += 1.4;
global.Rings += 1;
objGlobalController.RingsTimer = 100;
with (_ObjectHandle2) instance_destroy();
}
}
}

_ObjectHandle3 = instance_nearest(x, y, objGhostRing);
if (_ObjectHandle3 != noone) 
{
if scrPlayerCollisionMainObject(x,y,_ObjectHandle3)
{
with (_ObjectHandle3) instance_destroy();
}
}


_ObjectHandle4 = instance_nearest(x, y, objAttractedRing);
if (_ObjectHandle4 != noone) 
{
if scrPlayerCollisionMainObject(x,y,_ObjectHandle4)
{
global.Score += 10;
objPlayer.BoostTimer += 1.4;
global.Rings += 1;
objGlobalController.RingsTimer = 100;
with (_ObjectHandle4) instance_destroy();
}
}

_ObjHandle = instance_nearest(x, y, objSuperRing);
if (_ObjHandle != noone) 
{
if scrPlayerCollisionMainObject(x,y,_ObjHandle)
{
objGlobalController.RingsTimer = 170;
with (_ObjHandle) instance_destroy();
}
}
