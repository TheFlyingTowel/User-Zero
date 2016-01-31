    //=== Collision Check ===//   
    Check = collision_line(x,y,Target.x,Target.y,objParentTerrain,1,1)
    Check1 = collision_line(x,y,Target.x,Target.y,objParentTerrainLayer0,1,1)
    Check2 = collision_line(x,y,Target.x,Target.y,objParentTerrainLayer1,1,1)
    Check3 = collision_line(x,y,Target.x,Target.y,objParentBridge,1,1)
    
    if ((!Check) and (!Check1) and (!Check2) and (!Check3)) { return true }
    else { return false }
