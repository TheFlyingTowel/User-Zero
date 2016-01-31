
    // --- Allocate default Animation variables --------------------------------------
    Animation           = "Idle";  // Character's actual Animation. This is the one
                                   // you have to change. 
                                  
    AnimationPrevious  = "";       // This one is used to check if the Animation
                                   // has changed (if the previous anim isn't the same as
                                   // the new.)

    AnimationAngle     = 0;
    AnimationFrame     = 0;        // Actual frame on the Animation
    AnimationStart     = 0;        // This is the start frame of the actual Animation
    AnimationEnd       = 0;        // This is the end frame of the actual Animation
    AnimationLoop      = 0;
    AnimationSpeed     = 0;        // This is the speed of the actual Animation
    AnimationRepeat    = 0;        // Set this to true if you want the Animation to repeat
    AnimationRepeatTimes = 0;      // Number of times you want the animation to repeat, -1 = infinite
    AnimationLinkedTo  = "Nothing" // This is the name of the Animation wich actual is linked to
    
    AnimationDirection = 1;
    
    AnimationFlagsChanged  = 0;    // These flags are used if you want to track down
    AnimationFlagsFinished = 0;    // the Animations. For example if it has changed,
                                   // or if it has finished.
    
    // --- Allocate Animations -------------------------------------------------------
        
    // Idle Animation
    AnimationIdleStart  = 0;
    AnimationIdleEnd    = 0;
    AnimationIdleLoop   = 0;
    AnimationIdleSpeed  = 0.23;
    AnimationIdleRepeat = false;
    AnimationIdleRepeatTimes = 60;
    AnimationIdleLinkedTo = "IdleWait";
    
    // Idle waiting Animation
    AnimationIdleWaitStart  = 49;
    AnimationIdleWaitEnd    = 66;
    AnimationIdleWaitLoop   = 65;
    AnimationIdleWaitSpeed  = 0.07;
    AnimationIdleWaitRepeat = true;
    AnimationIdleWaitRepeatTimes = -1;
    AnimationIdleWaitLinkedTo = "Idle";
        
    // Walking Animation
    AnimationWalkingStart  = 2;
    AnimationWalkingEnd    = 7;
    AnimationWalkingLoop   = 2;
    AnimationWalkingSpeed  = 0.17;
    AnimationWalkingRepeat = true;
    AnimationWalkingRepeatTimes = -1;
    AnimationWalkingLinkedTo = "(none)";
    
    // FastWalk Animation
    AnimationFastWalkStart  = 2;
    AnimationFastWalkEnd    = 7;
    AnimationFastWalkLoop   = 2;
    AnimationFastWalkSpeed  = 0.17;
    AnimationFastWalkRepeat = true;
    AnimationFastWalkRepeatTimes = -1;
    AnimationFastWalkLinkedTo = "(none)";
    
    // Running Animation
    AnimationRunningStart  = 8;
    AnimationRunningEnd    = 13;
    AnimationRunningLoop   = 8;
    AnimationRunningSpeed  = 0.35;
    AnimationRunningRepeat = true;
    AnimationRunningRepeatTimes = -1;
    AnimationRunningLinkedTo = "(none)";
    
    // FastRun Animation
    AnimationFastRunStart  = 8;
    AnimationFastRunEnd    = 13;
    AnimationFastRunLoop   = 8;
    AnimationFastRunSpeed  = 0.35;
    AnimationFastRunRepeat = true;
    AnimationFastRunRepeatTimes = -1;
    AnimationFastRunLinkedTo = "(none)";
    
    // Dash Animation
    AnimationDashStart  = 8;
    AnimationDashEnd    = 13;
    AnimationDashLoop   = 8;
    AnimationDashSpeed  = 0.7;
    AnimationDashRepeat = true;
    AnimationDashRepeatTimes = -1;
    AnimationDashLinkedTo = "(none)";
    
    // Rolling Animation
    AnimationRollingStart  = 16;
    AnimationRollingEnd    = 23;
    AnimationRollingLoop   = 16;
    AnimationRollingSpeed  = 0.3;
    AnimationRollingRepeat = true;
    AnimationRollingRepeatTimes = -1;
    AnimationRollingLinkedTo = "(none)";
    
    // Jump Animation
    AnimationJumpStart  = 16;
    AnimationJumpEnd    = 23;
    AnimationJumpLoop   = 16;
    AnimationJumpSpeed  = 0.3;
    AnimationJumpRepeat = true;
    AnimationJumpRepeatTimes = -1;
    AnimationJumpLinkedTo = "(none)";
    
    // Skidding Animation
    AnimationSkidStart  = 28;
    AnimationSkidEnd    = 29;
    AnimationSkidLoop   = 28;
    AnimationSkidSpeed  = 0.25;
    AnimationSkidRepeat = true;
    AnimationSkidRepeatTimes = -1;
    AnimationSkidLinkedTo = "(none)";
        
    // Crouch down Animation
    AnimationCrouchDownStart  = 14;
    AnimationCrouchDownEnd    = 14;
    AnimationCrouchDownLoop   = 14;
    AnimationCrouchDownSpeed  = 0.2;
    AnimationCrouchDownRepeat = true;
    AnimationCrouchDownRepeatTimes = -1;
    AnimationCrouchDownLinkedTo = "(none)";
    
    // Look up Animation
    AnimationLookUpStart  = 48;
    AnimationLookUpEnd    = 48;
    AnimationLookUpLoop   = 48;
    AnimationLookUpSpeed  = 0.15;
    AnimationLookUpRepeat = true;
    AnimationLookUpRepeatTimes = -1;
    AnimationLookUpLinkedTo = "(none)";
    
    // Spindash Animation
    AnimationSpinDashStart  = 24;
    AnimationSpinDashEnd    = 27;
    AnimationSpinDashLoop   = 24;
    AnimationSpinDashSpeed  = 0.4;
    AnimationSpinDashRepeat = true;
    AnimationSpinDashRepeatTimes = -1;
    AnimationSpinDashLinkedTo = "(none)";
    
    // PeelOut Animation
    AnimationPeelOutStart  = 2;
    AnimationPeelOutEnd    = 13;
    AnimationPeelOutLoop   = 8;
    AnimationPeelOutSpeed  = 0.4;
    AnimationPeelOutRepeat = true;
    AnimationPeelOutRepeatTimes = -1;
    AnimationPeelOutLinkedTo = "(none)";
    
    // Hurt Animation
    AnimationHurtStart  = 30;
    AnimationHurtEnd    = 30;
    AnimationHurtLoop   = 30;
    AnimationHurtSpeed  = 0.15;
    AnimationHurtRepeat = true;  
    AnimationHurtRepeatTimes = -1; 
    AnimationHurtLinkedTo = "(none)";
        
    // Airflight animation
    AnimationAirFlightStart  = 40;
    AnimationAirFlightEnd    = 40;
    AnimationAirFlightLoop   = 40;
    AnimationAirFlightSpeed  = 0.2;
    AnimationAirFlightRepeat = true;  
    AnimationAirFlightRepeatTimes = -1;
    AnimationAirFlightLinkedTo = "(none)";
        
    //Trick animation
    AnimationTrickStart  = 31;
    AnimationTrickEnd    = 36;
    AnimationTrickLoop   = 31;
    AnimationTrickSpeed  = 0.30;
    AnimationTrickRepeat = true;
    AnimationTrickRepeatTimes = -1;
    AnimationTrickLinkedTo = "(none)";
    
    //Shoom animation
    AnimationShoomStart  = 31;
    AnimationShoomEnd    = 36;
    AnimationShoomLoop   = 31;
    AnimationShoomSpeed  = 0.25;
    AnimationShoomRepeat = false;
    AnimationShoomRepeatTimes = 0;
    AnimationShoomLinkedTo = "Running";
    
    //Grind animation
    AnimationGrindStart  = 16;
    AnimationGrindEnd    = 23;
    AnimationGrindLoop   = 16;
    AnimationGrindSpeed  = 0.20;
    AnimationGrindRepeat = true;
    AnimationGrindRepeatTimes = -1;
    AnimationGrindLinkedTo = "(none)";
    
    // Corkscrew animation
    AnimationCorkscrewStart  = 31;
    AnimationCorkscrewEnd    = 36;
    AnimationCorkscrewLoop   = 31;
    AnimationCorkscrewSpeed  = 0.20;
    AnimationCorkscrewRepeat = true;
    AnimationCorkscrewRepeatTimes = -1;
    AnimationCorkscrewLinkedTo = "(none)";
    
    // Corkscrew animation
    AnimationDieStart  = 68;
    AnimationDieEnd    = 69;
    AnimationDieLoop   = 68;
    AnimationDieSpeed  = 0.08;
    AnimationDieRepeat = true;
    AnimationDieRepeatTimes = -1;
    AnimationDieLinkedTo = "(none)";
    
    // Push Animation
    AnimationPushingStart  = 41;
    AnimationPushingEnd    = 44;
    AnimationPushingLoop   = 41;
    AnimationPushingSpeed  = 0.11;
    AnimationPushingRepeat = true;
    AnimationPushingRepeatTimes = -1;
    AnimationPushingLinkedTo = "(none)";
    
    // WobbleA Animation
    AnimationWobbleAStart  = 37;
    AnimationWobbleAEnd    = 39;
    AnimationWobbleALoop   = 37;
    AnimationWobbleASpeed  = 0.1;
    AnimationWobbleARepeat = true;  
    AnimationWobbleARepeatTimes = -1;
    AnimationWobbleALinkedTo = "(none)";
    
    // WobbleB Animation
    AnimationWobbleBStart  = 45;
    AnimationWobbleBEnd    = 47;
    AnimationWobbleBLoop   = 45;
    AnimationWobbleBSpeed  = 0.1;
    AnimationWobbleBRepeat = true;  
    AnimationWobbleBRepeatTimes = -1;
    AnimationWobbleBLinkedTo = "(none)";
    
    // Grab Animation
    AnimationGrabStart  = 67;
    AnimationGrabEnd    = 67;
    AnimationGrabLoop   = 67;
    AnimationGrabSpeed  = 0.1;
    AnimationGrabRepeat = true;  
    AnimationGrabRepeatTimes = -1;
    AnimationGrabLinkedTo = "(none)";

    // Air Dash Animation
    AnimationDashRingAStart  = 16;
    AnimationDashRingAEnd    = 23;
    AnimationDashRingALoop   = 16;
    AnimationDashRingASpeed  = 0.3;
    AnimationDashRingARepeat = false;
    AnimationDashRingARepeatTimes = -1;
    AnimationDashRingALinkedTo = "AirFall)";

    
