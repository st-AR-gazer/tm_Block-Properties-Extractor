



namespace Extractor {
    /* ************************************ */
    
    dictionary blockPillarBlacklist;
    
    void InitializeBlacklist() {

        array<int> platformTechTiltTransition2DownLeft = {1};
        blockPillarBlacklist["PlatformTechTiltTransition2DownLeft"] = platformTechTiltTransition2DownLeft;
        array<int> platformTechTiltTransition2DownRight = {1};
        blockPillarBlacklist["PlatformTechTiltTransition2DownRight"] = platformTechTiltTransition2DownRight;
        array<int> platformDirtTiltTransition2DownLeft = {1};
        blockPillarBlacklist["PlatformDirtTiltTransition2DownLeft"] = platformDirtTiltTransition2DownLeft;
        array<int> platformDirtTiltTransition2DownRight = {1};
        blockPillarBlacklist["PlatformDirtTiltTransition2DownRight"] = platformDirtTiltTransition2DownRight;
        array<int> platformIceTiltTransition2DownLeft = {1};
        blockPillarBlacklist["PlatformIceTiltTransition2DownLeft"] = platformIceTiltTransition2DownLeft;
        array<int> platformIceTiltTransition2DownRight = {1};
        blockPillarBlacklist["PlatformIceTiltTransition2DownRight"] = platformIceTiltTransition2DownRight;
        array<int> platformGrassTiltTransition2DownLeft = {1};
        blockPillarBlacklist["PlatformGrassTiltTransition2DownLeft"] = platformGrassTiltTransition2DownLeft;
        array<int> platformGrassTiltTransition2DownRight = {1};
        blockPillarBlacklist["PlatformGrassTiltTransition2DownRight"] = platformGrassTiltTransition2DownRight;
        array<int> platformPlasticTiltTransition2DownLeft = {1};
        blockPillarBlacklist["PlatformPlasticTiltTransition2DownLeft"] = platformPlasticTiltTransition2DownLeft; // variant: BaseAir
        array<int> platformPlasticTiltTransition2DownRight = {1};
        blockPillarBlacklist["PlatformPlasticTiltTransition2DownRight"] = platformPlasticTiltTransition2DownRight; // variant: BaseAir

        array<int> openTechRoadCurve2 = {2};
        blockPillarBlacklist["OpenTechRoadCurve2"] = openTechRoadCurve2; // variant: BaseAir
        array<int> openTechRoadCurve2Slope2DownLeft = {1};
        blockPillarBlacklist["OpenTechRoadCurve2Slope2DownLeft"] = openTechRoadCurve2Slope2DownLeft; // variant: BaseAir
        array<int> openTechRoadCurve2Slope2DownRight = {1};
        blockPillarBlacklist["OpenTechRoadCurve2Slope2DownRight"] = openTechRoadCurve2Slope2DownRight; // variant: BaseAir
        array<int> openTechRoadCurve2Slope2UpLeft = {1};
        blockPillarBlacklist["OpenTechRoadCurve2Slope2UpLeft"] = openTechRoadCurve2Slope2UpLeft; // variant: BaseAir
        array<int> openTechRoadCurve2Slope2UpRight = {1};
        blockPillarBlacklist["OpenTechRoadCurve2Slope2UpRight"] = openTechRoadCurve2Slope2UpRight; // variant: BaseAir
        array<int> openTechZoneCurve2In = {0, 1, 2};
        blockPillarBlacklist["OpenTechZoneCurve2In"] = openTechZoneCurve2In; // variant: BaseAir
        array<int> openTechZoneCurve2InSlope2DownRight = {1};
        blockPillarBlacklist["OpenTechZoneCurve2InSlope2DownRight"] = openTechZoneCurve2InSlope2DownRight; // variant: BaseAir
        array<int> openTechZoneCurve2InSlope2UpLeft = {1};
        blockPillarBlacklist["OpenTechZoneCurve2InSlope2UpLeft"] = openTechZoneCurve2InSlope2UpLeft; // variant: BaseAir
        array<int> openTechZoneCurve2Out = {1, 2};
        blockPillarBlacklist["OpenTechZoneCurve2Out"] = openTechZoneCurve2Out; // variant: BaseAir
        array<int> openTechZoneCurve2OutSlope2DownRight = {1};
        blockPillarBlacklist["OpenTechZoneCurve2OutSlope2DownRight"] = openTechZoneCurve2OutSlope2DownRight; // variant: BaseAir
        array<int> openTechZoneEndLargeLeftSlope2StraightRight = {0};
        blockPillarBlacklist["OpenTechZoneEndLargeLeftSlope2StraightRight"] = openTechZoneEndLargeLeftSlope2StraightRight; // variant: BaseAir
        array<int> openTechZoneCurve2OutSlope2UpLeft = {1};
        blockPillarBlacklist["OpenTechZoneCurve2OutSlope2UpLeft"] = openTechZoneCurve2OutSlope2UpLeft; // variant: BaseAir

        // Tech is replaced with Dirt, the assumption is that the same blocks have issues, just now they also have dirt in the name

        array<int> openDirtRoadCurve2 = {2};
        blockPillarBlacklist["OpenDirtRoadCurve2"] = openDirtRoadCurve2; // variant: BaseAir
        array<int> openDirtRoadCurve2Slope2DownLeft = {1};
        blockPillarBlacklist["OpenDirtRoadCurve2Slope2DownLeft"] = openDirtRoadCurve2Slope2DownLeft; // variant: BaseAir
        array<int> openDirtRoadCurve2Slope2DownRight = {1};
        blockPillarBlacklist["OpenDirtRoadCurve2Slope2DownRight"] = openDirtRoadCurve2Slope2DownRight; // variant: BaseAir
        array<int> openDirtRoadCurve2Slope2UpLeft = {1};
        blockPillarBlacklist["OpenDirtRoadCurve2Slope2UpLeft"] = openDirtRoadCurve2Slope2UpLeft; // variant: BaseAir
        array<int> openDirtRoadCurve2Slope2UpRight = {1};
        blockPillarBlacklist["OpenDirtRoadCurve2Slope2UpRight"] = openDirtRoadCurve2Slope2UpRight; // variant: BaseAir
        array<int> openDirtZoneCurve2In = {0, 1, 2};
        blockPillarBlacklist["OpenDirtZoneCurve2In"] = openDirtZoneCurve2In; // variant: BaseAir
        array<int> openDirtZoneCurve2InSlope2DownRight = {1};
        blockPillarBlacklist["OpenDirtZoneCurve2InSlope2DownRight"] = openDirtZoneCurve2InSlope2DownRight; // variant: BaseAir
        array<int> openDirtZoneCurve2InSlope2UpLeft = {1};
        blockPillarBlacklist["OpenDirtZoneCurve2InSlope2UpLeft"] = openDirtZoneCurve2InSlope2UpLeft; // variant: BaseAir
        array<int> openDirtZoneCurve2Out = {1, 2};
        blockPillarBlacklist["OpenDirtZoneCurve2Out"] = openDirtZoneCurve2Out; // variant: BaseAir
        array<int> openDirtZoneCurve2OutSlope2DownRight = {1};
        blockPillarBlacklist["OpenDirtZoneCurve2OutSlope2DownRight"] = openDirtZoneCurve2OutSlope2DownRight; // variant: BaseAir
        array<int> openDirtZoneEndLargeLeftSlope2StraightRight = {0};
        blockPillarBlacklist["OpenDirtZoneEndLargeLeftSlope2StraightRight"] = openDirtZoneEndLargeLeftSlope2StraightRight; // variant: BaseAir
        array<int> openDirtZoneCurve2OutSlope2UpLeft = {1};
        blockPillarBlacklist["OpenDirtZoneCurve2OutSlope2UpLeft"] = openDirtZoneCurve2OutSlope2UpLeft; // variant: BaseAir
        
        // Ice is replaced with Dirt, the assumption is that the same blocks have issues, just now they also have ice in the name

        array<int> openIceRoadCurve2 = {2};
        blockPillarBlacklist["OpenIceRoadCurve2"] = openIceRoadCurve2; // variant: BaseAir
        array<int> openIceRoadCurve2Slope2DownLeft = {1};
        blockPillarBlacklist["OpenIceRoadCurve2Slope2DownLeft"] = openIceRoadCurve2Slope2DownLeft; // variant: BaseAir
        array<int> openIceRoadCurve2Slope2DownRight = {1};
        blockPillarBlacklist["OpenIceRoadCurve2Slope2DownRight"] = openIceRoadCurve2Slope2DownRight; // variant: BaseAir
        array<int> openIceRoadCurve2Slope2UpLeft = {1};
        blockPillarBlacklist["OpenIceRoadCurve2Slope2UpLeft"] = openIceRoadCurve2Slope2UpLeft; // variant: BaseAir
        array<int> openIceRoadCurve2Slope2UpRight = {1};
        blockPillarBlacklist["OpenIceRoadCurve2Slope2UpRight"] = openIceRoadCurve2Slope2UpRight; // variant: BaseAir
        array<int> openIceZoneCurve2In = {0, 1, 2};
        blockPillarBlacklist["OpenIceZoneCurve2In"] = openIceZoneCurve2In; // variant: BaseAir
        array<int> openIceZoneCurve2InSlope2DownRight = {1};
        blockPillarBlacklist["OpenIceZoneCurve2InSlope2DownRight"] = openIceZoneCurve2InSlope2DownRight; // variant: BaseAir
        array<int> openIceZoneCurve2InSlope2UpLeft = {1};
        blockPillarBlacklist["OpenIceZoneCurve2InSlope2UpLeft"] = openIceZoneCurve2InSlope2UpLeft; // variant: BaseAir
        array<int> openIceZoneCurve2Out = {1, 2};
        blockPillarBlacklist["OpenIceZoneCurve2Out"] = openIceZoneCurve2Out; // variant: BaseAir
        array<int> openIceZoneCurve2OutSlope2DownRight = {1};
        blockPillarBlacklist["OpenIceZoneCurve2OutSlope2DownRight"] = openIceZoneCurve2OutSlope2DownRight; // variant: BaseAir
        array<int> openIceZoneEndLargeLeftSlope2StraightRight = {0};
        blockPillarBlacklist["OpenIceZoneEndLargeLeftSlope2StraightRight"] = openIceZoneEndLargeLeftSlope2StraightRight; // variant: BaseAir
        array<int> openIceZoneCurve2OutSlope2UpLeft = {1};
        blockPillarBlacklist["OpenIceZoneCurve2OutSlope2UpLeft"] = openIceZoneCurve2OutSlope2UpLeft; // variant: BaseAir

        // Ice is replaced with Grass, the assumption is that the same blocks have issues, just now they also have grass in the name

        array<int> openGrassRoadCurve2 = {2};
        blockPillarBlacklist["OpenGrassRoadCurve2"] = openGrassRoadCurve2; // variant: BaseAir
        array<int> openGrassRoadCurve2Slope2DownLeft = {1};
        blockPillarBlacklist["OpenGrassRoadCurve2Slope2DownLeft"] = openGrassRoadCurve2Slope2DownLeft; // variant: BaseAir
        array<int> openGrassRoadCurve2Slope2DownRight = {1};
        blockPillarBlacklist["OpenGrassRoadCurve2Slope2DownRight"] = openGrassRoadCurve2Slope2DownRight; // variant: BaseAir
        array<int> openGrassRoadCurve2Slope2UpLeft = {1};
        blockPillarBlacklist["OpenGrassRoadCurve2Slope2UpLeft"] = openGrassRoadCurve2Slope2UpLeft; // variant: BaseAir
        array<int> openGrassRoadCurve2Slope2UpRight = {1};
        blockPillarBlacklist["OpenGrassRoadCurve2Slope2UpRight"] = openGrassRoadCurve2Slope2UpRight; // variant: BaseAir
        array<int> openGrassZoneCurve2In = {0, 1, 2};
        blockPillarBlacklist["OpenGrassZoneCurve2In"] = openGrassZoneCurve2In; // variant: BaseAir
        array<int> openGrassZoneCurve2InSlope2DownRight = {1};
        blockPillarBlacklist["OpenGrassZoneCurve2InSlope2DownRight"] = openGrassZoneCurve2InSlope2DownRight; // variant: BaseAir
        array<int> openGrassZoneCurve2InSlope2UpLeft = {1};
        blockPillarBlacklist["OpenGrassZoneCurve2InSlope2UpLeft"] = openGrassZoneCurve2InSlope2UpLeft; // variant: BaseAir
        array<int> openGrassZoneCurve2Out = {1, 2};
        blockPillarBlacklist["OpenGrassZoneCurve2Out"] = openGrassZoneCurve2Out; // variant: BaseAir
        array<int> openGrassZoneCurve2OutSlope2DownRight = {1};
        blockPillarBlacklist["OpenGrassZoneCurve2OutSlope2DownRight"] = openGrassZoneCurve2OutSlope2DownRight; // variant: BaseAir
        array<int> openGrassZoneEndLargeLeftSlope2StraightRight = {0};
        blockPillarBlacklist["OpenGrassZoneEndLargeLeftSlope2StraightRight"] = openGrassZoneEndLargeLeftSlope2StraightRight; // variant: BaseAir
        array<int> openGrassZoneCurve2OutSlope2UpLeft = {1};
        blockPillarBlacklist["OpenGrassZoneCurve2OutSlope2UpLeft"] = openGrassZoneCurve2OutSlope2UpLeft; // variant: BaseAir
        array<int> decoPlatformSlope2EndCurve2In = {2};
        blockPillarBlacklist["DecoPlatformSlope2EndCurve2In"] = decoPlatformSlope2EndCurve2In;
        array<int> decoPlatformSlope2Base2CurveIn = {2};
        blockPillarBlacklist["DecoPlatformSlope2Base2CurveIn"] = decoPlatformSlope2Base2CurveIn;
        array<int> decoPlatformSlope2StartBase5 = {1};
        blockPillarBlacklist["DecoPlatformSlope2StartBase5"] = decoPlatformSlope2StartBase5;
        array<int> decoPlatformSlope2Start2Curve4Out = {4, 5, 8, 10};
        blockPillarBlacklist["DecoPlatformSlope2Start2Curve4Out"] = decoPlatformSlope2Start2Curve4Out;
        array<int> decoPlatformSlope2End2Curve4In = {2, 5, 7, 10, 11};
        blockPillarBlacklist["DecoPlatformSlope2End2Curve4In"] = decoPlatformSlope2End2Curve4In;
        array<int> decoPlatformSlope4Base4CurveOut = {5, 7, 8, 10, 11, 13, 14};
        blockPillarBlacklist["DecoPlatformSlope4Base4CurveOut"] = decoPlatformSlope4Base4CurveOut;
        array<int> decoPlatformSlope4Base4CurveIn = {2, 4, 5, 7, 8, 10, 11, 14};
        blockPillarBlacklist["DecoPlatformSlope4Base4CurveIn"] = decoPlatformSlope4Base4CurveIn;
        array<int> decoPlatformSlope2Start2Base5 = {2, 4, 5, 7, 8, 10, 11, 14};
        blockPillarBlacklist["DecoPlatformSlope2Start2Base5"] = decoPlatformSlope2Start2Base5;
        array<int> decoHillSlope2Curve2In = {2};
        blockPillarBlacklist["DecoHillSlope2Curve2In"] = decoHillSlope2Curve2In;
        array<int> decoHillSlope2Curve2Out = {2};
        blockPillarBlacklist["DecoHillSlope2Curve2Out"] = decoHillSlope2Curve2Out;
        array<int> decoHillSlope2ChicaneX2Left = {1, 2};
        blockPillarBlacklist["DecoHillSlope2ChicaneX2Left"] = decoHillSlope2ChicaneX2Left;
        array<int> decoCliff10Straight = {2, 5, 7};
        blockPillarBlacklist["DecoCliff10Straight"] = decoCliff10Straight;
        array<int> decoCliff10StraightSimple = {2, 5, 7};
        blockPillarBlacklist["DecoCliff10StraightSimple"] = decoCliff10StraightSimple;
        array<int> decoCliff10CornerIn = {2, 4, 5, 10, 11};
        blockPillarBlacklist["DecoCliff10CornerIn"] = decoCliff10CornerIn;
        array<int> decoCliff10CornerInSimple = {2, 4, 5, 10, 11};
        blockPillarBlacklist["DecoCliff10CornerInSimple"] = decoCliff10CornerInSimple;
        array<int> decoCliff10CornerOut = {2};
        blockPillarBlacklist["DecoCliff10CornerOut"] = decoCliff10CornerOut;
        array<int> decoCliff10CornerOutSimple = {2};
        blockPillarBlacklist["DecoCliff10CornerOutSimple"] = decoCliff10CornerOutSimple;
        array<int> decoCliff10DiagOut = {2, 4};
        blockPillarBlacklist["DecoCliff10DiagOut"] = decoCliff10DiagOut;
        array<int> decoCliff10DiagOutSimple = {2, 4};
        blockPillarBlacklist["DecoCliff10DiagOutSimple"] = decoCliff10DiagOutSimple;
        array<int> decoCliff10DiagOutFull = {2, 4};
        blockPillarBlacklist["DecoCliff10DiagOutFull"] = decoCliff10DiagOutFull;
        array<int> decoCliff10DiagOutSimpleFull = {2, 4};
        blockPillarBlacklist["DecoCliff10DiagOutSimpleFull"] = decoCliff10DiagOutSimpleFull;
        array<int> decoCliff10DiagInSmall = {2};
        blockPillarBlacklist["DecoCliff10DiagInSmall"] = decoCliff10DiagInSmall;
        array<int> decoCliff10DiagInSmallSimple = {2};
        blockPillarBlacklist["DecoCliff10DiagInSmallSimple"] = decoCliff10DiagInSmallSimple;
        array<int> decoCliff10DiagIn = {1, 2, 4, 5, 8};
        blockPillarBlacklist["DecoCliff10DiagIn"] = decoCliff10DiagIn;
        array<int> decoCliff10DiagInSimple = {1, 2, 4, 5, 8}; // 5 and 8 aren't checked, just assumed...
        blockPillarBlacklist["DecoCliff10DiagInSimple"] = decoCliff10DiagInSimple;
        array<int> decoCliff10DiagInFull = {1, 2, 4, 5, 8}; // 5 and 8 aren't checked, just assumed...
        blockPillarBlacklist["DecoCliff10DiagInFull"] = decoCliff10DiagInFull;
        array<int> decoCliff10DiagInSimpleFull = {1, 2, 4, 5, 8}; // 2, 4, 5 and 8 aren't checked, just assumed...
        blockPillarBlacklist["DecoCliff10DiagInSimpleFull"] = decoCliff10DiagInSimpleFull;
        array<int> decoCliff10End = {2, 5, 7, 8, 10, 11};
        blockPillarBlacklist["DecoCliff10End"] = decoCliff10End;
        array<int> decoCliff10EndMirror = {2, 5, 7, 8, 10, 11}; // 8, 10 and 11 aren't checked, just assumed...
        blockPillarBlacklist["DecoCliff10EndMirror"] = decoCliff10EndMirror;
        array<int> decoCliff8NoHillCornerIn = {2};
        blockPillarBlacklist["DecoCliff8NoHillCornerIn"] = decoCliff8NoHillCornerIn;
        array<int> decoCliff8NoHillCornerInSimple = {2};
        blockPillarBlacklist["DecoCliff8NoHillCornerInSimple"] = decoCliff8NoHillCornerInSimple;
        array<int> decoCliff8NoHillDiagOutFull = {2};
        blockPillarBlacklist["DecoCliff8NoHillDiagOutFull"] = decoCliff8NoHillDiagOutFull;
        array<int> decoCliff8NoHillDiagOutSimpleFull = {2};
        blockPillarBlacklist["DecoCliff8NoHillDiagOutSimpleFull"] = decoCliff8NoHillDiagOutSimpleFull;
        array<int> decoCliff8NoHillDiagIn = {1, 4, 5};
        blockPillarBlacklist["DecoCliff8NoHillDiagIn"] = decoCliff8NoHillDiagIn;
        array<int> decoCliff8NoHillDiagInSmall = {2};
        blockPillarBlacklist["DecoCliff8NoHillDiagInSmall"] = decoCliff8NoHillDiagInSmall;
        array<int> decoCliff8NoHillDiagInSimple = {1, 2, 4, 5};
        blockPillarBlacklist["DecoCliff8NoHillDiagInSimple"] = decoCliff8NoHillDiagInSimple;
        array<int> decoCliff8NoHillDiagInSmallSimple = {2};
        blockPillarBlacklist["DecoCliff8NoHillDiagInSmallSimple"] = decoCliff8NoHillDiagInSmallSimple;
        array<int> decoCliff8NoHillDiagInSmallFull = {2};
        blockPillarBlacklist["DecoCliff8NoHillDiagInSmallFull"] = decoCliff8NoHillDiagInSmallFull;
        array<int> decoCliff8NoHillDiagInSmallSimpleFull = {2};
        blockPillarBlacklist["DecoCliff8NoHillDiagInSmallSimpleFull"] = decoCliff8NoHillDiagInSmallSimpleFull;
        array<int> decoCliff8NoHillDiagInFull = {2, 4, 5};
        blockPillarBlacklist["DecoCliff8NoHillDiagInFull"] = decoCliff8NoHillDiagInFull;
        array<int> decoCliff8NoHillDiagInSimpleFull = {2, 4, 5};
        blockPillarBlacklist["DecoCliff8NoHillDiagInSimpleFull"] = decoCliff8NoHillDiagInSimpleFull;

        // Starting from here blocks are now dirt, the assumption is that the same blocks have issues, just now they also have dirt in the name

        array<int> decoPlatformDirtSlope2EndCurve2In = {2};
        blockPillarBlacklist["DecoPlatformDirtSlope2EndCurve2In"] = decoPlatformDirtSlope2EndCurve2In;
        array<int> decoPlatformDirtSlope2Base2CurveIn = {2};
        blockPillarBlacklist["DecoPlatformDirtSlope2Base2CurveIn"] = decoPlatformDirtSlope2Base2CurveIn;
        array<int> decoPlatformDirtSlope2StartBase5 = {1};
        blockPillarBlacklist["DecoPlatformDirtSlope2StartBase5"] = decoPlatformDirtSlope2StartBase5;
        array<int> decoPlatformDirtSlope2Start2Curve4Out = {4, 5, 8, 10};
        blockPillarBlacklist["DecoPlatformDirtSlope2Start2Curve4Out"] = decoPlatformDirtSlope2Start2Curve4Out;
        array<int> decoPlatformDirtSlope2End2Curve4In = {2, 5, 7, 10, 11};
        blockPillarBlacklist["DecoPlatformDirtSlope2End2Curve4In"] = decoPlatformDirtSlope2End2Curve4In;
        array<int> decoPlatformDirtSlope4Base4CurveOut = {5, 7, 8, 10, 11, 13, 14};
        blockPillarBlacklist["DecoPlatformDirtSlope4Base4CurveOut"] = decoPlatformDirtSlope4Base4CurveOut;
        array<int> decoPlatformDirtSlope4Base4CurveIn = {2, 4, 5, 7, 8, 10, 11, 14};
        blockPillarBlacklist["DecoPlatformDirtSlope4Base4CurveIn"] = decoPlatformDirtSlope4Base4CurveIn;
        array<int> decoPlatformDirtSlope2Start2Base5 = {2, 4, 5, 7, 8, 10, 11, 14};
        blockPillarBlacklist["DecoPlatformDirtSlope2Start2Base5"] = decoPlatformDirtSlope2Start2Base5;
        array<int> decoHillDirtSlope2Curve2In = {2};
        blockPillarBlacklist["DecoHillDirtSlope2Curve2In"] = decoHillDirtSlope2Curve2In;
        array<int> decoHillDirtSlope2Curve2Out = {2};
        blockPillarBlacklist["DecoHillDirtSlope2Curve2Out"] = decoHillDirtSlope2Curve2Out;
        array<int> decoHillDirtSlope2ChicaneX2Left = {1, 2};
        blockPillarBlacklist["DecoHillDirtSlope2ChicaneX2Left"] = decoHillDirtSlope2ChicaneX2Left;
        array<int> decoCliff10DirtStraight = {2, 5, 7};
        blockPillarBlacklist["DecoCliff10DirtStraight"] = decoCliff10DirtStraight;
        array<int> decoCliff10DirtStraightSimple = {2, 5, 7};
        blockPillarBlacklist["DecoCliff10DirtStraightSimple"] = decoCliff10DirtStraightSimple;
        array<int> decoCliff10DirtCornerIn = {2, 4, 5, 10, 11};
        blockPillarBlacklist["DecoCliff10DirtCornerIn"] = decoCliff10DirtCornerIn;
        array<int> decoCliff10DirtCornerInSimple = {2, 4, 5, 10, 11};
        blockPillarBlacklist["DecoCliff10DirtCornerInSimple"] = decoCliff10DirtCornerInSimple;
        array<int> decoCliff10DirtCornerOut = {2};
        blockPillarBlacklist["DecoCliff10DirtCornerOut"] = decoCliff10DirtCornerOut;
        array<int> decoCliff10DirtCornerOutSimple = {2};
        blockPillarBlacklist["DecoCliff10DirtCornerOutSimple"] = decoCliff10DirtCornerOutSimple;
        array<int> decoCliff10DirtDiagOut = {2, 4};
        blockPillarBlacklist["DecoCliff10DirtDiagOut"] = decoCliff10DirtDiagOut;
        array<int> decoCliff10DirtDiagOutSimple = {2, 4};
        blockPillarBlacklist["DecoCliff10DirtDiagOutSimple"] = decoCliff10DirtDiagOutSimple;
        array<int> decoCliff10DirtDiagOutFull = {2, 4};
        blockPillarBlacklist["DecoCliff10DirtDiagOutFull"] = decoCliff10DirtDiagOutFull;
        array<int> decoCliff10DirtDiagOutSimpleFull = {2, 4};
        blockPillarBlacklist["DecoCliff10DirtDiagOutSimpleFull"] = decoCliff10DirtDiagOutSimpleFull;
        array<int> decoCliff10DirtDiagInSmall = {2};
        blockPillarBlacklist["DecoCliff10DirtDiagInSmall"] = decoCliff10DirtDiagInSmall;
        array<int> decoCliff10DirtDiagInSmallSimple = {2};
        blockPillarBlacklist["DecoCliff10DirtDiagInSmallSimple"] = decoCliff10DirtDiagInSmallSimple;
        array<int> decoCliff10DirtDiagInSmallFull = {2};
        blockPillarBlacklist["DecoCliff10DirtDiagInSmallFull"] = decoCliff10DirtDiagInSmallFull;
        array<int> decoCliff10DirtDiagInSmallSimpleFull = {2};
        blockPillarBlacklist["DecoCliff10DirtDiagInSmallSimpleFull"] = decoCliff10DirtDiagInSmallSimpleFull;
        array<int> decoCliff10DirtDiagIn = {1, 2, 4, 5, 8};
        blockPillarBlacklist["DecoCliff10DirtDiagIn"] = decoCliff10DirtDiagIn;
        array<int> decoCliff10DirtDiagInSimple = {1, 2, 4, 5, 8};
        blockPillarBlacklist["DecoCliff10DirtDiagInSimple"] = decoCliff10DirtDiagInSimple;
        array<int> decoCliff10DirtDiagInFull = {1, 2, 4, 5, 8};
        blockPillarBlacklist["DecoCliff10DirtDiagInFull"] = decoCliff10DirtDiagInFull;
        array<int> decoCliff10DirtDiagInSimpleFull = {1, 2, 4, 5, 8};
        blockPillarBlacklist["DecoCliff10DirtDiagInSimpleFull"] = decoCliff10DirtDiagInSimpleFull;
        array<int> decoCliff10DirtEnd = {2, 5, 7, 8, 10, 11};
        blockPillarBlacklist["DecoCliff10DirtEnd"] = decoCliff10DirtEnd;
        array<int> decoCliff10DirtEndMirror = {2, 5, 7, 8, 10, 11};
        blockPillarBlacklist["DecoCliff10DirtEndMirror"] = decoCliff10DirtEndMirror;
        array<int> decoCliff8DirtNoHillCornerIn = {2};
        blockPillarBlacklist["DecoCliff8DirtNoHillCornerIn"] = decoCliff8DirtNoHillCornerIn;
        array<int> decoCliff8DirtNoHillCornerInSimple = {2};
        blockPillarBlacklist["DecoCliff8DirtNoHillCornerInSimple"] = decoCliff8DirtNoHillCornerInSimple;
        array<int> decoCliff8DirtNoHillDiagOutFull = {2};
        blockPillarBlacklist["DecoCliff8DirtNoHillDiagOutFull"] = decoCliff8DirtNoHillDiagOutFull;
        array<int> decoCliff8DirtNoHillDiagOutSimpleFull = {2};
        blockPillarBlacklist["DecoCliff8DirtNoHillDiagOutSimpleFull"] = decoCliff8DirtNoHillDiagOutSimpleFull;
        array<int> decoCliff8DirtNoHillDiagIn = {1, 4, 5};
        blockPillarBlacklist["DecoCliff8DirtNoHillDiagIn"] = decoCliff8DirtNoHillDiagIn;
        array<int> decoCliff8DirtNoHillDiagInSmall = {2};
        blockPillarBlacklist["DecoCliff8DirtNoHillDiagInSmall"] = decoCliff8DirtNoHillDiagInSmall;
        array<int> decoCliff8DirtNoHillDiagInSmallSimple = {2};
        blockPillarBlacklist["DecoCliff8DirtNoHillDiagInSmallSimple"] = decoCliff8DirtNoHillDiagInSmallSimple;
        array<int> decoCliff8DirtNoHillDiagInSmallFull = {2};
        blockPillarBlacklist["DecoCliff8DirtNoHillDiagInSmallFull"] = decoCliff8DirtNoHillDiagInSmallFull;
        array<int> decoCliff8DirtNoHillDiagInSmallSimpleFull = {2};
        blockPillarBlacklist["DecoCliff8DirtNoHillDiagInSmallSimpleFull"] = decoCliff8DirtNoHillDiagInSmallSimpleFull;
        array<int> decoCliff8DirtNoHillDiagInFull = {2, 4, 5};
        blockPillarBlacklist["DecoCliff8DirtNoHillDiagInFull"] = decoCliff8DirtNoHillDiagInFull;
        array<int> decoCliff8DirtNoHillDiagInSimple = {1, 4, 5};
        blockPillarBlacklist["DecoCliff8DirtNoHillDiagInSimple"] = decoCliff8DirtNoHillDiagInSimple;
        array<int> decoCliff8DirtNoHillDiagInSimpleFull = {2, 4, 5};
        blockPillarBlacklist["DecoCliff8DirtNoHillDiagInSimpleFull"] = decoCliff8DirtNoHillDiagInSimpleFull;

        // Starting from here blocks are now ice, the assumption is that the same blocks have issues, just now they also have ice instead of dirt in the name
 
        array<int> decoPlatformIceSlope2EndCurve2In = {2};
        blockPillarBlacklist["DecoPlatformIceSlope2EndCurve2In"] = decoPlatformIceSlope2EndCurve2In;
        array<int> decoPlatformIceSlope2Base2CurveIn = {2};
        blockPillarBlacklist["DecoPlatformIceSlope2Base2CurveIn"] = decoPlatformIceSlope2Base2CurveIn;
        array<int> decoPlatformIceSlope2StartBase5 = {1};
        blockPillarBlacklist["DecoPlatformIceSlope2StartBase5"] = decoPlatformIceSlope2StartBase5;
        array<int> decoPlatformIceSlope2Start2Curve4Out = {4, 5, 8, 10};
        blockPillarBlacklist["DecoPlatformIceSlope2Start2Curve4Out"] = decoPlatformIceSlope2Start2Curve4Out;
        array<int> decoPlatformIceSlope2End2Curve4In = {2, 5, 7, 10, 11};
        blockPillarBlacklist["DecoPlatformIceSlope2End2Curve4In"] = decoPlatformIceSlope2End2Curve4In;
        array<int> decoPlatformIceSlope4Base4CurveOut = {5, 7, 8, 10, 11, 13, 14};
        blockPillarBlacklist["DecoPlatformIceSlope4Base4CurveOut"] = decoPlatformIceSlope4Base4CurveOut;
        array<int> decoPlatformIceSlope4Base4CurveIn = {2, 4, 5, 7, 8, 10, 11, 14};
        blockPillarBlacklist["DecoPlatformIceSlope4Base4CurveIn"] = decoPlatformIceSlope4Base4CurveIn;
        array<int> decoPlatformIceSlope2Start2Base5 = {2, 4, 5, 7, 8, 10, 11, 14};
        blockPillarBlacklist["DecoPlatformIceSlope2Start2Base5"] = decoPlatformIceSlope2Start2Base5;
        array<int> decoHillIceSlope2Curve2In = {2};
        blockPillarBlacklist["DecoHillIceSlope2Curve2In"] = decoHillIceSlope2Curve2In;
        array<int> decoHillIceSlope2Curve2Out = {2};
        blockPillarBlacklist["DecoHillIceSlope2Curve2Out"] = decoHillIceSlope2Curve2Out;
        array<int> decoHillIceSlope2ChicaneX2Left = {1, 2};
        blockPillarBlacklist["DecoHillIceSlope2ChicaneX2Left"] = decoHillIceSlope2ChicaneX2Left;
        array<int> decoCliff10IceStraight = {2, 5, 7};
        blockPillarBlacklist["DecoCliff10IceStraight"] = decoCliff10IceStraight;
        array<int> decoCliff10IceStraightSimple = {2, 5, 7};
        blockPillarBlacklist["DecoCliff10IceStraightSimple"] = decoCliff10IceStraightSimple;
        array<int> decoCliff10IceCornerIn = {2, 4, 5, 10, 11};
        blockPillarBlacklist["DecoCliff10IceCornerIn"] = decoCliff10IceCornerIn;
        array<int> decoCliff10IceCornerInSimple = {2, 4, 5, 10, 11};
        blockPillarBlacklist["DecoCliff10IceCornerInSimple"] = decoCliff10IceCornerInSimple;
        array<int> decoCliff10IceCornerOut = {2};
        blockPillarBlacklist["DecoCliff10IceCornerOut"] = decoCliff10IceCornerOut;
        array<int> decoCliff10IceCornerOutSimple = {2};
        blockPillarBlacklist["DecoCliff10IceCornerOutSimple"] = decoCliff10IceCornerOutSimple;
        array<int> decoCliff10IceDiagOut = {2, 4};
        blockPillarBlacklist["DecoCliff10IceDiagOut"] = decoCliff10IceDiagOut;
        array<int> decoCliff10IceDiagOutSimple = {2, 4};
        blockPillarBlacklist["DecoCliff10IceDiagOutSimple"] = decoCliff10IceDiagOutSimple;
        array<int> decoCliff10IceDiagOutFull = {2, 4};
        blockPillarBlacklist["DecoCliff10IceDiagOutFull"] = decoCliff10IceDiagOutFull;
        array<int> decoCliff10IceDiagOutSimpleFull = {2, 4};
        blockPillarBlacklist["DecoCliff10IceDiagOutSimpleFull"] = decoCliff10IceDiagOutSimpleFull;
        array<int> decoCliff10IceDiagInSmall = {2};
        blockPillarBlacklist["DecoCliff10IceDiagInSmall"] = decoCliff10IceDiagInSmall;
        array<int> decoCliff10IceDiagInSmallSimple = {2};
        blockPillarBlacklist["DecoCliff10IceDiagInSmallSimple"] = decoCliff10IceDiagInSmallSimple;
        array<int> decoCliff10IceDiagInSmallFull = {2};
        blockPillarBlacklist["DecoCliff10IceDiagInSmallFull"] = decoCliff10IceDiagInSmallFull;
        array<int> decoCliff10IceDiagInSmallSimpleFull = {2};
        blockPillarBlacklist["DecoCliff10IceDiagInSmallSimpleFull"] = decoCliff10IceDiagInSmallSimpleFull;
        array<int> decoCliff10IceDiagIn = {1, 2, 4, 5, 8};
        blockPillarBlacklist["DecoCliff10IceDiagIn"] = decoCliff10IceDiagIn;
        array<int> decoCliff10IceDiagInSimple = {1, 2, 4, 5, 8};
        blockPillarBlacklist["DecoCliff10IceDiagInSimple"] = decoCliff10IceDiagInSimple;
        array<int> decoCliff10IceDiagInFull = {1, 2, 4, 5, 8};
        blockPillarBlacklist["DecoCliff10IceDiagInFull"] = decoCliff10IceDiagInFull;
        array<int> decoCliff10IceDiagInSimpleFull = {1, 2, 4, 5, 8};
        blockPillarBlacklist["DecoCliff10IceDiagInSimpleFull"] = decoCliff10IceDiagInSimpleFull;
        array<int> decoCliff10IceEnd = {2, 5, 7, 8, 10, 11};
        blockPillarBlacklist["DecoCliff10IceEnd"] = decoCliff10IceEnd;
        array<int> decoCliff10IceEndMirror = {2, 5, 7, 8, 10, 11};
        blockPillarBlacklist["DecoCliff10IceEndMirror"] = decoCliff10IceEndMirror;
        array<int> decoCliff8IceNoHillCornerIn = {2};
        blockPillarBlacklist["DecoCliff8IceNoHillCornerIn"] = decoCliff8IceNoHillCornerIn;
        array<int> decoCliff8IceNoHillCornerInSimple = {2};
        blockPillarBlacklist["DecoCliff8IceNoHillCornerInSimple"] = decoCliff8IceNoHillCornerInSimple;
        array<int> decoCliff8IceNoHillDiagOutFull = {2};
        blockPillarBlacklist["DecoCliff8IceNoHillDiagOutFull"] = decoCliff8IceNoHillDiagOutFull;
        array<int> decoCliff8IceNoHillDiagOutSimpleFull = {2};
        blockPillarBlacklist["DecoCliff8IceNoHillDiagOutSimpleFull"] = decoCliff8IceNoHillDiagOutSimpleFull;
        array<int> decoCliff8IceNoHillDiagIn = {1, 4, 5};
        blockPillarBlacklist["DecoCliff8IceNoHillDiagIn"] = decoCliff8IceNoHillDiagIn;
        array<int> decoCliff8IceNoHillDiagInSmall = {2};
        blockPillarBlacklist["DecoCliff8IceNoHillDiagInSmall"] = decoCliff8IceNoHillDiagInSmall;
        array<int> decoCliff8IceNoHillDiagInSmallSimple = {2};
        blockPillarBlacklist["DecoCliff8IceNoHillDiagInSmallSimple"] = decoCliff8IceNoHillDiagInSmallSimple;
        array<int> decoCliff8IceNoHillDiagInSmallFull = {2};
        blockPillarBlacklist["DecoCliff8IceNoHillDiagInSmallFull"] = decoCliff8IceNoHillDiagInSmallFull;
        array<int> decoCliff8IceNoHillDiagInSmallSimpleFull = {2};
        blockPillarBlacklist["DecoCliff8IceNoHillDiagInSmallSimpleFull"] = decoCliff8IceNoHillDiagInSmallSimpleFull;
        array<int> decoCliff8IceNoHillDiagInFull = {2, 4, 5};
        blockPillarBlacklist["DecoCliff8IceNoHillDiagInFull"] = decoCliff8IceNoHillDiagInFull;
        array<int> decoCliff8IceNoHillDiagInSimple = {1, 4, 5};
        blockPillarBlacklist["DecoCliff8IceNoHillDiagInSimple"] = decoCliff8IceNoHillDiagInSimple;
        array<int> decoCliff8IceNoHillDiagInSimpleFull = {2, 4, 5};
        blockPillarBlacklist["DecoCliff8IceNoHillDiagInSimpleFull"] = decoCliff8IceNoHillDiagInSimpleFull;

        array<int> rallyRoadDirtHighCurve2 = {2};
        blockPillarBlacklist["RallyRoadDirtHighCurve2"] = rallyRoadDirtHighCurve2;
        array<int> rallyRoadDirtLowCurve2 = {2};
        blockPillarBlacklist["RallyRoadDirtLowCurve2"] = rallyRoadDirtLowCurve2;
        array<int> rallyRoadDirtHighToLowDownCurve2Left = {1, 2};
        blockPillarBlacklist["RallyRoadDirtHighToLowDownCurve2Left"] = rallyRoadDirtHighToLowDownCurve2Left;
        array<int> rallyRoadDirtHighToLowDownCurve2Right = {2};
        blockPillarBlacklist["RallyRoadDirtHighToLowDownCurve2Right"] = rallyRoadDirtHighToLowDownCurve2Right;
        array<int> rallyRoadDirtHighToLowUpStraightX2 = {1};
        blockPillarBlacklist["RallyRoadDirtHighToLowUpStraightX2"] = rallyRoadDirtHighToLowUpStraightX2;
        array<int> rallyRoadDirtHighToLowUpCurve2Right = {1, 2};
        blockPillarBlacklist["RallyRoadDirtHighToLowUpCurve2Right"] = rallyRoadDirtHighToLowUpCurve2Right;
        array<int> rallyRoadDirtHighToLowUpCurve2Left = {1, 2};
        blockPillarBlacklist["RallyRoadDirtHighToLowUpCurve2Left"] = rallyRoadDirtHighToLowUpCurve2Left;

        // And we are back to the Deco, but this time Wall, blocks xdd

        array<int> decoWallLoopStart3x6Center = {2};
        blockPillarBlacklist["DecoWallLoopStart3x6Center"] = decoWallLoopStart3x6Center;
        array<int> decoWallLoopStart3x6CenterGrass = {0, 2};
        blockPillarBlacklist["DecoWallLoopStart3x6CenterGrass"] = decoWallLoopStart3x6CenterGrass;
        array<int> decoWallLoopStart3x6CenterDirt = {2};
        blockPillarBlacklist["DecoWallLoopStart3x6CenterDirt"] = decoWallLoopStart3x6CenterDirt;
        array<int> decoWallLoopStart3x6CenterIce = {2};
        blockPillarBlacklist["DecoWallLoopStart3x6CenterIce"] = decoWallLoopStart3x6CenterIce;
        


/*




block: RallyRoadDirtHighCurve2, ppbi index: 2
block: RallyRoadDirtLowCurve2, ppbi index: 2
block: RallyRoadDirtHighToLowDownCurve2Left, ppbi index: 1
block: RallyRoadDirtHighToLowDownCurve2Left, ppbi index: 2
block: RallyRoadDirtHighToLowDownCurve2Right, ppbi index: 2
block: RallyRoadDirtHighToLowUpStraightX2, ppbi index: 1
block: RallyRoadDirtHighToLowUpCurve2Right, ppbi index: 1
block: RallyRoadDirtHighToLowUpCurve2Right, ppbi index: 2
block: RallyRoadDirtHighToLowUpCurve2Left, ppbi index: 1
block: RallyRoadDirtHighToLowUpCurve2Left, ppbi index: 2
block: DecoWallLoopStart3x6Center, ppbi index: 2
block: DecoWallLoopStart3x6CenterGrass, ppbi index: 0
block: DecoWallLoopStart3x6CenterGrass, ppbi index: 2
block: DecoWallLoopStart3x6CenterDirt, ppbi index: 2
block: DecoWallLoopStart3x6CenterIce, ppbi index: 2


block: PlatformTechTiltTransition2DownLeft, ppbi index: 1


*/
    }
}