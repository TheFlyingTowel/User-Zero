if (Action = ActionHurt) exit;
var _ObjectHandle,_ObjectHandle2;

_ObjectHandle = instance_nearest(x, y, objParentMonitor);

if (scrPlayerCollisionMainObject(x, y, _ObjectHandle)) {
if (!Ground) Gravity = -4;
with (_ObjectHandle) instance_destroy(); 
}

_ObjectHandle2 = instance_nearest(x, y, objParentItemBox);
if (scrPlayerCollisionMainObject(x, y+9, _ObjectHandle2) && Action == 1 && Gravity > 0)
{
_ObjectHandle2.TargetHandle = id;
with (_ObjectHandle2) instance_destroy();
Gravity =  -5;
Ground  =  false;
}

