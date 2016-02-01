// ==== FUNCTION ====================================================================
// scrPlayerHandleObjectsBooster()
// ==================================================================================
//
if (Action = ActionHurt) exit;
var _ObjectHandle, _RelativeBoosterOrientation;

// ---- Boosters ---------------------------------------------------------------------
_ObjectHandle = instance_nearest(x, y, objParentBooster);
if (_ObjectHandle != noone) {
_RelativeBoosterOrientation = _ObjectHandle.BoosterOrientation;
if (_ObjectHandle.Activated==false)
switch (_RelativeBoosterOrientation) 
{

case _ObjectHandle.ObjectOrientationRight:
if (scrPlayerCollisionMainObject(x, y,_ObjectHandle)) 
  {
   Speed = 15;
   AnimationDirection = 1;
   if (_ObjectHandle.CanPlaySound = true)
   {
   sound_play(_ObjectHandle.Sound);
   _ObjectHandle.CanPlaySound = false;
   with (_ObjectHandle) alarm[0] = 15;
   }
  }
  break;

case _ObjectHandle.ObjectOrientationRightUp:
if (scrPlayerCollisionMainObject(x, y,_ObjectHandle)) 
  {
    Ground = true;
    Action = ActionBoostSpin;
    Angle  = 90;
    Speed  = 15;
    AnimationDirection = 1;

    if (_ObjectHandle.CanPlaySound = true)
    {
    sound_play(_ObjectHandle.Sound);
    _ObjectHandle.CanPlaySound = false;
    with (_ObjectHandle) alarm[0] = 15;
    }  
  }
  break;
  
case _ObjectHandle.ObjectOrientationRightDown:
if (scrPlayerCollisionMainObject(x, y,_ObjectHandle)) 
  {
    Ground = true;
    Action = ActionBoostSpin;
    Angle  = -90;
    Speed  = 15;
    AnimationDirection = 1;

    if (_ObjectHandle.CanPlaySound = true)
    {
    sound_play(_ObjectHandle.Sound);
    _ObjectHandle.CanPlaySound = false;
    with (_ObjectHandle) alarm[0] = 15;
    }  
  }
  break;

case _ObjectHandle.ObjectOrientationLeft:
if (scrPlayerCollisionMainObject(x, y,_ObjectHandle)) 
  {
   Speed = -15;
   AnimationDirection = 1;
   if (_ObjectHandle.CanPlaySound = true)
   {
   sound_play(_ObjectHandle.Sound);
   _ObjectHandle.CanPlaySound = false;
   with (_ObjectHandle) alarm[0] = 15;
   }
  }
  break;

case _ObjectHandle.ObjectOrientationLeftUp:
if (scrPlayerCollisionMainObject(x, y,_ObjectHandle)) 
  {
    Ground = true;
    Action = ActionBoostSpin;
    Angle  = 270;
    Speed  = -15;
    AnimationDirection = -1;

    if (_ObjectHandle.CanPlaySound = true)
    {
    sound_play(_ObjectHandle.Sound);
    _ObjectHandle.CanPlaySound = false;
    with (_ObjectHandle) alarm[0] = 15;
    }  
  }
  break;
  
case _ObjectHandle.ObjectOrientationLeftDown:
if (scrPlayerCollisionMainObject(x, y,_ObjectHandle)) 
  {
    Ground = true;
    Action = ActionBoostSpin;
    Angle  = 90;
    Speed  = -15;
    AnimationDirection = -1;

    if (_ObjectHandle.CanPlaySound = true)
    {
    sound_play(_ObjectHandle.Sound);
    _ObjectHandle.CanPlaySound = false;
    with (_ObjectHandle) alarm[0] = 15;
    }  
  }
  break;
  
case _ObjectHandle.ObjectOrientationRailRight:
if (scrPlayerCollisionMainObject(x, y,_ObjectHandle) && Action = ActionGrind) 
  {
   Speed = 17;
   AnimationDirection = 1;
   if (_ObjectHandle.CanPlaySound = true)
   {
   sound_play(_ObjectHandle.Sound);
   _ObjectHandle.CanPlaySound = false;
   with (_ObjectHandle) alarm[0] = 15;
   }
  }
  break;
  
case _ObjectHandle.ObjectOrientationRailLeft:
if (scrPlayerCollisionMainObject(x, y,_ObjectHandle) && Action = ActionGrind) 
  {
   Speed = -17;
   AnimationDirection = -1;
   if (_ObjectHandle.CanPlaySound = true)
   {
   sound_play(_ObjectHandle.Sound);
   _ObjectHandle.CanPlaySound = false;
   with (_ObjectHandle) alarm[0] = 15;
   }
  }
  break;
  
}
}
