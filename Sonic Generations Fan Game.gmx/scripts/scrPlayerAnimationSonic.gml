
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
    
    //Ranking Animation
    AnimationRankWaitingStart    = 384;
    AnimationRankWaitingEnd      = 391;
    AnimationRankWaitingLoop     = 384;
    AnimationRankWaitingSpeed    = 0.18;
    AnimationRankWaitingRepeat   = true;
    AnimationRankWaitingRepeatTimes = -1;
    AnimationRankWaitingLinkedTo = "(none)";
    
    AnimationRankSStart    = 220;
    AnimationRankSEnd      = 266;
    AnimationRankSLoop     = 265;
    AnimationRankSSpeed    = 0.28;
    AnimationRankSRepeat   = true;
    AnimationRankSRepeatTimes = -1;
    AnimationRankSLinkedTo = "(none)";

    AnimationRankAStart    = 267;
    AnimationRankAEnd      = 299;
    AnimationRankALoop     = 299;
    AnimationRankASpeed    = 0.25;
    AnimationRankARepeat   = true;
    AnimationRankARepeatTimes = -1;
    AnimationRankALinkedTo = "(none)";
    
    AnimationRankBStart    = 300;
    AnimationRankBEnd      = 325;
    AnimationRankBLoop     = 325;
    AnimationRankBSpeed    = 0.25;
    AnimationRankBRepeat   = true;
    AnimationRankBRepeatTimes = -1;
    AnimationRankBLinkedTo = "(none)";

    AnimationRankCStart    = 326;
    AnimationRankCEnd      = 362;
    AnimationRankCLoop     = 362;
    AnimationRankCSpeed    = 0.25;
    AnimationRankCRepeat   = true;
    AnimationRankCRepeatTimes = -1;
    AnimationRankCLinkedTo = "(none)";
    
    AnimationRankDStart    = 363;
    AnimationRankDEnd      = 383;
    AnimationRankDLoop     = 383;
    AnimationRankDSpeed    = 0.25;
    AnimationRankDRepeat   = true;
    AnimationRankDRepeatTimes = -1;
    AnimationRankDLinkedTo = "(none)";
    
    //Rotate Pole Animation
    AnimationStompEndStart    = 211;
    AnimationStompEndEnd      = 213;
    AnimationStompEndLoop     = 213;
    AnimationStompEndSpeed    = 0.18;
    AnimationStompEndRepeat   = false;
    AnimationStompEndRepeatTimes = 1;
    AnimationStompEndLinkedTo = "Idle";
    
    //Rotate Pole Animation
    AnimationFlipStart    = 92;
    AnimationFlipEnd      = 104;
    AnimationFlipLoop     = 104;
    AnimationFlipSpeed    = 0.25;
    AnimationFlipRepeat   = false;
    AnimationFlipRepeatTimes = 1;
    AnimationFlipLinkedTo = "AirFall";
    
    //Rotate Pole Animation
    AnimationRotateStart    = 199;
    AnimationRotateEnd      = 210;
    AnimationRotateLoop     = 199;
    AnimationRotateSpeed    = 0.25;
    AnimationRotateRepeat   = true;
    AnimationRotateRepeatTimes = -1;
    AnimationRotateLinkedTo = "(none)";
    
    //Tricks Animation
    AnimationTrick1Start    = 115;
    AnimationTrick1End      = 125;
    AnimationTrick1Loop     = 125;
    AnimationTrick1Speed    = 0.45;
    AnimationTrick1Repeat   = true;
    AnimationTrick1RepeatTimes = -1;
    AnimationTrick1LinkedTo = "(none)";
    
    AnimationTrick2Start    = 113;
    AnimationTrick2End      = 114;
    AnimationTrick2Loop     = 114;
    AnimationTrick2Speed    = 0.40;
    AnimationTrick2Repeat   = true;
    AnimationTrick2RepeatTimes = -1;
    AnimationTrick2LinkedTo = "(none)";

    AnimationTrick3Start    = 98;
    AnimationTrick3End      = 102;
    AnimationTrick3Loop     = 102;
    AnimationTrick3Speed    = 0.45;
    AnimationTrick3Repeat   = true;
    AnimationTrick3RepeatTimes = -1;
    AnimationTrick3LinkedTo = "(none)";
    
    //Finish animation
    AnimationFinishStart    = 182;
    AnimationFinishEnd      = 206;
    AnimationFinishLoop     = 203;
    AnimationFinishSpeed    = 0.45;
    AnimationFinishRepeat   = true;
    AnimationFinishRepeatTimes = -1;
    AnimationFinishLinkedTo = "(none)";
    
    //Wall Grab Animation
    AnimationWallGrabStart  = 177;
    AnimationWallGrabEnd    = 178;
    AnimationWallGrabLoop   = 177;
    AnimationWallGrabSpeed  = 0.20;
    AnimationWallGrabRepeat = true;
    AnimationWallGrabRepeatTimes = -1;
    AnimationWallGrabLinkedTo = "(none)";
    
    AnimationWallJumpStart  = 136;
    AnimationWallJumpEnd    = 140;
    AnimationWallJumpLoop   = 140;
    AnimationWallJumpSpeed  = 0.20;
    AnimationWallJumpRepeat = true;
    AnimationWallJumpRepeatTimes = -1;
    AnimationWallJumpLinkedTo = "(none)";
    
    // Sliding Animation
    AnimationSlidingStart   = 43;
    AnimationSlidingEnd     = 46;
    AnimationSlidingLoop    = 45;
    AnimationSlidingSpeed   = 0.20;
    AnimationSlidingRepeat  = true;
    AnimationSlidingRepeatTimes = -1;
    AnimationSlidingLinkedTo    = "(none)";
    
    // Idle Animation
    AnimationIdleStart  = 0;
    AnimationIdleEnd    = 0;
    AnimationIdleLoop   = 0;
    AnimationIdleSpeed  = 0.23;
    AnimationIdleRepeat = false;
    AnimationIdleRepeatTimes = 50;
    AnimationIdleLinkedTo = "IdleWait";
    
    // Idle waiting Animation
    AnimationIdleWaitStart  = 145;
    AnimationIdleWaitEnd    = 176;
    AnimationIdleWaitLoop   = 150;
    AnimationIdleWaitSpeed  = 0.23;
    AnimationIdleWaitRepeat = true;
    AnimationIdleWaitRepeatTimes = -1;
    AnimationIdleWaitLinkedTo = "(none)";
        
    // Walking Animation
    AnimationWalkingStart  = 1;
    AnimationWalkingEnd    = 8;
    AnimationWalkingLoop   = 1;
    AnimationWalkingSpeed  = 0.17;
    AnimationWalkingRepeat = true;
    AnimationWalkingRepeatTimes = -1;
    AnimationWalkingLinkedTo = "(none)";
    
    // FastWalk Animation
    AnimationFastWalkStart  = 9;
    AnimationFastWalkEnd    = 16;
    AnimationFastWalkLoop   = 9;
    AnimationFastWalkSpeed  = 0.17;
    AnimationFastWalkRepeat = true;
    AnimationFastWalkRepeatTimes = -1;
    AnimationFastWalkLinkedTo = "(none)";
    
    // Running Animation
    AnimationRunningStart  = 9;
    AnimationRunningEnd    = 16;
    AnimationRunningLoop   = 9;
    AnimationRunningSpeed  = 0.35;
    AnimationRunningRepeat = true;
    AnimationRunningRepeatTimes = -1;
    AnimationRunningLinkedTo = "(none)";
    
    // FastRun Animation
    AnimationFastRunStart  = 17;
    AnimationFastRunEnd    = 24;
    AnimationFastRunLoop   = 17;
    AnimationFastRunSpeed  = 0.35;
    AnimationFastRunRepeat = true;
    AnimationFastRunRepeatTimes = -1;
    AnimationFastRunLinkedTo = "(none)";
    
    // Dash Animation
    AnimationDashStart  = 17;
    AnimationDashEnd    = 24;
    AnimationDashLoop   = 17;
    AnimationDashSpeed  = 0.7;
    AnimationDashRepeat = true;
    AnimationDashRepeatTimes = -1;
    AnimationDashLinkedTo = "(none)";
    
    // Rolling Animation
    AnimationRollingStart  = 25;
    AnimationRollingEnd    = 28;
    AnimationRollingLoop   = 25;
    AnimationRollingSpeed  = 0.3;
    AnimationRollingRepeat = true;
    AnimationRollingRepeatTimes = -1;
    AnimationRollingLinkedTo = "(none)";
    
    // Jump Animation
    AnimationJumpStart  = 25;
    AnimationJumpEnd    = 32;
    AnimationJumpLoop   = 25;
    AnimationJumpSpeed  = 0.3;
    AnimationJumpRepeat = true;
    AnimationJumpRepeatTimes = -1;
    AnimationJumpLinkedTo = "(none)";
    
    // Skidding Animation
    AnimationSkidStart  = 33;
    AnimationSkidEnd    = 34;
    AnimationSkidLoop   = 33;
    AnimationSkidSpeed  = 0.25;
    AnimationSkidRepeat = true;
    AnimationSkidRepeatTimes = -1;
    AnimationSkidLinkedTo = "(none)";
    
    // Push Animation
    AnimationPushingStart  = 35;
    AnimationPushingEnd    = 42;
    AnimationPushingLoop   = 35;
    AnimationPushingSpeed  = 0.2;
    AnimationPushingRepeat = true;
    AnimationPushingRepeatTimes = -1;
    AnimationPushingLinkedTo = "(none)";
    
    // Crouch down Animation
    AnimationCrouchDownStart  = 59;
    AnimationCrouchDownEnd    = 62;
    AnimationCrouchDownLoop   = 62;
    AnimationCrouchDownSpeed  = 0.2;
    AnimationCrouchDownRepeat = true;
    AnimationCrouchDownRepeatTimes = -1;
    AnimationCrouchDownLinkedTo = "(none)";
    
    // Look up Animation
    AnimationLookUpStart  = 86;
    AnimationLookUpEnd    = 91;
    AnimationLookUpLoop   = 88;
    AnimationLookUpSpeed  = 0.15;
    AnimationLookUpRepeat = true;
    AnimationLookUpRepeatTimes = -1;
    AnimationLookUpLinkedTo = "(none)";
        
    // Hurt Animation
    AnimationHurtStart  = 63;
    AnimationHurtEnd    = 65;
    AnimationHurtLoop   = 65;
    AnimationHurtSpeed  = 0.15;
    AnimationHurtRepeat = true;  
    AnimationHurtRepeatTimes = -1; 
    AnimationHurtLinkedTo = "(none)";
    
    // WobbleA Animation
    AnimationWobbleAStart  = 66;
    AnimationWobbleAEnd    = 73;
    AnimationWobbleALoop   = 66;
    AnimationWobbleASpeed  = 0.3;
    AnimationWobbleARepeat = true;  
    AnimationWobbleARepeatTimes = -1;
    AnimationWobbleALinkedTo = "(none)";
    
    // WobbleB Animation
    AnimationWobbleBStart  = 74;
    AnimationWobbleBEnd    = 81;
    AnimationWobbleBLoop   = 74;
    AnimationWobbleBSpeed  = 0.3;
    AnimationWobbleBRepeat = true;  
    AnimationWobbleBRepeatTimes = -1;
    AnimationWobbleBLinkedTo = "(none)";
    
    // Airflight animation
    AnimationAirFlightStart  = 51;
    AnimationAirFlightEnd    = 54;
    AnimationAirFlightLoop   = 51;
    AnimationAirFlightSpeed  = 0.2;
    AnimationAirFlightRepeat = true;  
    AnimationAirFlightRepeatTimes = -1;
    AnimationAirFlightLinkedTo = "(none)";
    
    // Airfall animation
    AnimationAirFallStart  = 48;
    AnimationAirFallEnd    = 50;
    AnimationAirFallLoop   = 49;
    AnimationAirFallSpeed  = 0.2;
    AnimationAirFallRepeat = true;  
    AnimationAirFallRepeatTimes = -1;
    AnimationAirFallLinkedTo = "(none)";
    
    //Trick animation
    AnimationTrickStart  = 127;
    AnimationTrickEnd    = 134;
    AnimationTrickLoop   = 134;
    AnimationTrickSpeed  = 0.18;
    AnimationTrickRepeat = true;
    AnimationTrickRepeatTimes = -1;
    AnimationTrickLinkedTo = "(none)";
    
    //Shoom animation
    AnimationShoomStart  = 194;
    AnimationShoomEnd    = 198;
    AnimationShoomLoop   = 197;
    AnimationShoomSpeed  = 0.20;
    AnimationShoomRepeat = true;
    AnimationShoomRepeatTimes = -1;
    AnimationShoomLinkedTo = "(none)";
    
    //Grind animation
    AnimationGrindStart  = 82;
    AnimationGrindEnd    = 83;
    AnimationGrindLoop   = 82;
    AnimationGrindSpeed  = 0.20;
    AnimationGrindRepeat = true;
    AnimationGrindRepeatTimes = -1;
    AnimationGrindLinkedTo = "(none)";
    
    // Corkscrew animation
    AnimationCorkscrewStart  = 182;
    AnimationCorkscrewEnd    = 192;
    AnimationCorkscrewLoop   = 182;
    AnimationCorkscrewSpeed  = 0.20;
    AnimationCorkscrewRepeat = true;
    AnimationCorkscrewRepeatTimes = -1;
    AnimationCorkscrewLinkedTo = "(none)";
    
    // Corkscrew animation
    AnimationDieStart  = 193;
    AnimationDieEnd    = 193;
    AnimationDieLoop   = 193;
    AnimationDieSpeed  = 0.20;
    AnimationDieRepeat = true;
    AnimationDieRepeatTimes = -1;
    AnimationDieLinkedTo = "(none)";
    
    // Pull up animation
    AnimationPullUpStart  = 179;
    AnimationPullUpEnd    = 181;
    AnimationPullUpLoop   = 179;
    AnimationPullUpSpeed  = 0.20;
    AnimationPullUpRepeat = true;
    AnimationPullUpRepeatTimes = -1;
    AnimationPullUpLinkedTo = "(none)";
    
    // Stomping animation
    AnimationStompingStart  = 55;
    AnimationStompingEnd    = 55;
    AnimationStompingLoop   = 55;
    AnimationStompingSpeed  = 0.20;
    AnimationStompingRepeat = true;
    AnimationStompingRepeatTimes = -1;
    AnimationStompingLinkedTo = "(none)";
    
    // Lightdash animation
    AnimationLightdashStart  = 141;
    AnimationLightdashEnd    = 144;
    AnimationLightdashLoop   = 141;
    AnimationLightdashSpeed  = 0.20;
    AnimationLightdashRepeat = true;
    AnimationLightdashRepeatTimes = -1;
    AnimationLightdashLinkedTo = "(none)";

    // Booster animation
    AnimationBoostSpinStart  = 392;
    AnimationBoostSpinEnd    = 395;
    AnimationBoostSpinLoop   = 392;
    AnimationBoostSpinSpeed  = 0.18;
    AnimationBoostSpinRepeat = true;
    AnimationBoostSpinRepeatTimes = -1;
    AnimationBoostSpinLinkedTo = "(none)";

    //Dash Ring Animation
    AnimationDashRingAStart    = 141;
    AnimationDashRingAEnd      = 144;
    AnimationDashRingALoop     = 141;
    AnimationDashRingASpeed    = 0.25;
    AnimationDashRingARepeat   = false;
    AnimationDashRingARepeatTimes = -1;
    AnimationDashRingALinkedTo = "AirFall";
    
