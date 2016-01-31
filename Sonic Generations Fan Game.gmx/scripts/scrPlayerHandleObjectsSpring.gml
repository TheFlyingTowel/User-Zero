// ==== FUNCTION ====================================================================
// scrPlayerHandleObjectsSpring()
// ==================================================================================
//
if (Action = ActionHurt) exit;
var _ObjectHandle;

// ---- Springs ---------------------------------------------------------------------
_ObjectHandle = instance_nearest(x, y, objParentSpring);
if (_ObjectHandle != noone) {
if ( _ObjectHandle.SpringActivated == false )
switch (_ObjectHandle.SpringOrientation) {

case _ObjectHandle.ObjectOrientationUp:
if (scrPlayerCollisionBottomObject(x, y, Angle, maskBig, _ObjectHandle))
{
      Homing      = false; 
      HomingMiss  = false; 
      ActionTimer = 0;

      Ground  =   false;
      Speed   =   cos(degtorad(90))*_ObjectHandle.SpringStrength;
      Gravity =   sin(degtorad(90))*-_ObjectHandle.SpringStrength;
      Action = ActionSpring;
      sound_play(_ObjectHandle.Sound);
      _ObjectHandle.SpringActivated = true;
}
break;

case _ObjectHandle.ObjectOrientationDown:
if (scrPlayerCollisionTopObject(x, y, Angle, maskBig, _ObjectHandle)) 
{
      Homing      = false; 
      HomingMiss  = false; 
      ActionTimer = 0;

      if (Angle>170 && Angle<350) || !Ground {
      Ground  =   false;
      Angle   =   0;
      Action  =   ActionSpring;
      ActionSpringTime = 15+_ObjectHandle.SpringStrength;
      SpringDirection  = 270;
      SpringStrength   = _ObjectHandle.SpringStrength;
      } 
      Speed   =   cos(degtorad(270))*_ObjectHandle.SpringStrength;
      Gravity =   sin(degtorad(270))*-_ObjectHandle.SpringStrength;
      Action  =   ActionSpring;
      sound_play(_ObjectHandle.Sound);
      _ObjectHandle.SpringActivated = true;
}
break;

case _ObjectHandle.ObjectOrientationRight:
if (scrPlayerCollisionLeftObject(x, y, Angle, maskBig, _ObjectHandle)) 
{
      Homing      = false; 
      HomingMiss  = false;
      ActionTimer = 0; 

      if (Angle>80 && Angle<350) {
      Ground  =   false;
      Action  =   ActionSpring;
      Angle   =   0;
      ActionSpringTime = 15+_ObjectHandle.SpringStrength;
      SpringDirection  = 0;
      SpringStrength   = _ObjectHandle.SpringStrength;
      } 
      Speed   =   cos(degtorad(0))*_ObjectHandle.SpringStrength;
      Gravity =   sin(degtorad(0))*-_ObjectHandle.SpringStrength;
      AnimationDirection = 1;
      sound_play(_ObjectHandle.Sound);
      _ObjectHandle.SpringActivated = true;
}
break;

case _ObjectHandle.ObjectOrientationLeft:
if (scrPlayerCollisionRightObject(x, y, Angle, maskBig, _ObjectHandle)) 
{
      Homing      = false; 
      HomingMiss  = false;
      ActionTimer = 0; 

      if (Angle>80 && Angle<350) {
      Ground  =   false;
      Action  =   ActionSpring;
      Angle   =   0;
      ActionSpringTime = 15+_ObjectHandle.SpringStrength;
      SpringDirection  = 180;
      SpringStrength   = _ObjectHandle.SpringStrength;
      } 
      Speed   =   cos(degtorad(180))*_ObjectHandle.SpringStrength;
      Gravity =   sin(degtorad(180))*-_ObjectHandle.SpringStrength;
      AnimationDirection = -1;
      sound_play(_ObjectHandle.Sound);
      _ObjectHandle.SpringActivated = true;
}
break;

case _ObjectHandle.ObjectOrientationDownLeft:
if (scrPlayerCollisionMainObject(x, y, _ObjectHandle)) 
{
      Homing      = false; 
      HomingMiss  = false;
      ActionTimer = 0; 

      if (Angle>80 && Angle<350) || !Ground {
      Ground  =   false;
      Action  =   ActionSpring;
      Angle   =   0;
      ActionSpringTime = 15+_ObjectHandle.SpringStrength;
      SpringDirection  = _ObjectHandle.ObjectOrientationDownLeft;
      SpringStrength   = _ObjectHandle.SpringStrength;
      } 
      Speed   =   cos(degtorad(_ObjectHandle.ObjectOrientationDownLeft))*_ObjectHandle.SpringStrength;
      Gravity =   sin(degtorad(_ObjectHandle.ObjectOrientationDownLeft))*-_ObjectHandle.SpringStrength;
      AnimationDirection = -1;
      sound_play(_ObjectHandle.Sound);
      _ObjectHandle.SpringActivated = true;
}
break;

case _ObjectHandle.ObjectOrientationUpLeft:
if (scrPlayerCollisionMainObject(x, y, _ObjectHandle)) 
{
      Homing      = false; 
      HomingMiss  = false;
      ActionTimer = 0; 

      if (Angle>80 && Angle<350) || !Ground {
      Ground  =   false;
      Action  =   ActionSpring;
      Angle   =   0;
      ActionSpringTime = 15+_ObjectHandle.SpringStrength;
      SpringDirection  = _ObjectHandle.ObjectOrientationUpLeft;
      SpringStrength   = _ObjectHandle.SpringStrength;
      } 
      Speed   =   cos(degtorad(_ObjectHandle.ObjectOrientationUpLeft))*_ObjectHandle.SpringStrength;
      Gravity =   sin(degtorad(_ObjectHandle.ObjectOrientationUpLeft))*-_ObjectHandle.SpringStrength;
      AnimationDirection = -1;
      sound_play(_ObjectHandle.Sound);
      _ObjectHandle.SpringActivated = true;
}
break;

case _ObjectHandle.ObjectOrientationUpRight:
if (scrPlayerCollisionMainObject(x, y, _ObjectHandle)) 
{
      Homing      = false; 
      HomingMiss  = false;
      ActionTimer = 0; 

      if (Angle>80 && Angle<350) || !Ground {
      Ground  =   false;
      Action  =   ActionSpring;
      Angle   =   0;
      ActionSpringTime = 15+_ObjectHandle.SpringStrength;
      SpringDirection  = _ObjectHandle.ObjectOrientationUpRight;
      SpringStrength   = _ObjectHandle.SpringStrength;
      } 
      Speed   =   cos(degtorad(_ObjectHandle.ObjectOrientationUpRight))*_ObjectHandle.SpringStrength;
      Gravity =   sin(degtorad(_ObjectHandle.ObjectOrientationUpRight))*-_ObjectHandle.SpringStrength;
      AnimationDirection = -1;
      sound_play(_ObjectHandle.Sound);
      _ObjectHandle.SpringActivated = true;
}
break;

case _ObjectHandle.ObjectOrientationDownRight:
if (scrPlayerCollisionMainObject(x, y, _ObjectHandle)) 
{
      Homing      = false; 
      HomingMiss  = false;
      ActionTimer = 0; 

      if (Angle>80 && Angle<350) || !Ground {
      Ground  =   false;
      Action  =   ActionSpring;
      Angle   =   0;
      ActionSpringTime = 15+_ObjectHandle.SpringStrength;
      SpringDirection  = _ObjectHandle.ObjectOrientationDownRight;
      SpringStrength   = _ObjectHandle.SpringStrength;
      } 
      Speed   =   cos(degtorad(_ObjectHandle.ObjectOrientationDownRight))*_ObjectHandle.SpringStrength;
      Gravity =   sin(degtorad(_ObjectHandle.ObjectOrientationDownRight))*-_ObjectHandle.SpringStrength;
      AnimationDirection = -1;
      sound_play(_ObjectHandle.Sound);
      _ObjectHandle.SpringActivated = true;
}
break;

}
}
