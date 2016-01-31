// ==== FUNCTION ====================================================================
// scrPlayerHandleObjectsLayer()
// ==================================================================================
//  
if (Action==ActionHurt) exit;

    var _ObjectHandle;

if (Action != ActionGrind)
{
    // ---- Check for layer change ------------------------------------------------------
    // --- Layer 1 ---
    _ObjectHandle = instance_nearest(x, y, objEngineLayerChangeTo1);
    if (_ObjectHandle != noone) {
        if ((Layer == 0) && scrPlayerPresiseCollisionCheck(x, y, objEngineLayerChangeTo1)==true) {
            Layer = 1;
        }
    }

    // --- Layer 0 ---
    _ObjectHandle = instance_nearest(x, y, objEngineLayerChangeTo0);
    if (_ObjectHandle != noone) {
        if ((Layer == 1) && scrPlayerPresiseCollisionCheck(x, y, objEngineLayerChangeTo0)==true) {
            Layer = 0;
        }
    }

    // --- Layer Swap ---
    _ObjectHandle = instance_nearest(x, y, objEngineLayerChangeSwitch);
    if (_ObjectHandle != noone) {
        if (Ground && scrPlayerPresiseCollisionCheck(x, y, objEngineLayerChangeSwitch)==true) {
            if (Speed > 0)      Layer = 1;
            else                Layer = 0;
        }
    }
}