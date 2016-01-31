// ==== FUNCTION ====================================================================
// scrPlayerHandleObjectsSpring()
// ==================================================================================
//
if (Action = ActionHurt) exit;
var _ObjectHandle, _RelativeSprikeOrientation;

// ---- Springs ---------------------------------------------------------------------
_ObjectHandle = instance_nearest(x, y, objParentSpike);
if (_ObjectHandle != noone) {
_RelativeSpikeOrientation = (_ObjectHandle.SpikeOrientation-round(Angle/90)) mod 4;
if (_ObjectHandle.SpikeActivated==false)
switch (_RelativeSpikeOrientation) {
case _ObjectHandle.ObjectOrientationUp:
if (scrPlayerCollisionBottomObject(x, y, Angle, maskMid, _ObjectHandle)) {
scrPlayerMotionHurt();
}
break;
case _ObjectHandle.ObjectOrientationDown:
if (scrPlayerCollisionTopObject(x, y, Angle, maskMid, _ObjectHandle)) {
scrPlayerMotionHurt();
}
break;
case _ObjectHandle.ObjectOrientationRight:
if (scrPlayerCollisionLeftObject(x, y, Angle, maskMid, _ObjectHandle) && Speed<=0) {
scrPlayerMotionHurt();
}
break;
case _ObjectHandle.ObjectOrientationLeft:
if (scrPlayerCollisionRightObject(x, y, Angle, v, _ObjectHandle) && Speed>=0) {
scrPlayerMotionHurt();
}
break;
}
}
