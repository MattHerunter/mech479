/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  5                                     |
|   \\  /    A nd           | Web:      www.OpenFOAM.org                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    `format'      ascii;
    class       dictionary;
    object      blockMeshDict;
}
dnl> -----------------------------------------------------------------
dnl> <STANDARD DEFINTIONS>
dnl>
changecom(//)changequote([,]) dnl>
define(calc, [esyscmd(perl -e 'print ($1)')]) dnl>
define(VCOUNT, 0)  dnl>
define(vlabel, [[// ]pt VCOUNT ($1) define($1, VCOUNT)define([VCOUNT], incr(VCOUNT))])  dnl>
dnl>
define(nRefCells, 20) dnl>
define(nEdgeCells, nRefCells) dnl>
define(nZCells, 1) dnl>
dnl>
define(xMax,4) dnl>
define(xMin,-3) dnl>
define(yMax,3.06) dnl>
define(yMin,-3.06) dnl>
define(zMax,1) dnl>
define(zMin,-1) dnl>
dnl>
define(xCurve1,0) dnl>
define(yCurve1,0) dnl>
define(xRefine1,-0.3) dnl>
define(yRefine1,0) dnl>
define(xCurve2,0.25) dnl>
define(yCurve2,0.059413) dnl>
define(xRefine2,0.24244) dnl>
define(yRefine2,0.35932) dnl>
define(xCurve3,0.5) dnl>
define(yCurve3,0.05294) dnl>
define(xRefine3,0.5189) dnl>
define(yRefine3,0.35234) dnl>
define(xCurve4,0.75) dnl>
define(yCurve4,0.031603) dnl>
define(xRefine4,0.78106) dnl>
define(yRefine4,0.32999) dnl>
define(xCurve5,1) dnl>
define(yCurve5,0) dnl>
define(xRefine5,1.3) dnl>
define(yRefine5,0) dnl>
define(xCurve6,0.75) dnl>
define(yCurve6,-0.031603) dnl>
define(xRefine6,0.78106) dnl>
define(yRefine6,-0.32999) dnl>
define(xCurve7,0.5) dnl>
define(yCurve7,-0.05294) dnl>
define(xRefine7,0.5189) dnl>
define(yRefine7,-0.35234) dnl>
define(xCurve8,0.25) dnl>
define(yCurve8,-0.059413) dnl>
define(xRefine8,0.24244) dnl>
define(yRefine8,-0.35932) dnl>
dnl>
define(dX,calc(xMax - xMin)) dnl>
define(dY,calc(yMax - yMin)) dnl>
define(xWall1,calc(xMin + dX/4)) dnl>
define(xWall2,calc(xMin + 3*dX/4)) dnl>
define(yWall1,calc(yMin + dY/4)) dnl>
define(yWall2,calc(yMin + 3*dY/4)) dnl>
dnl>
define(Gxp,20) dnl>
define(Gyp,20) dnl>
define(Gxn,calc(1.0/Gxp)) dnl>
define(Gyn,calc(1.0/Gyp)) dnl>
dnl>

convertToMeters 1;

vertices
(
    name v0  (xCurve5 yCurve5 zMin) 			// Back inner circle
    name v1  (xRefine5 yRefine5 zMin) 			// Back outer circle 
    name v2  (xMax yRefine5 zMin) 
    name v3  (xMax yWall2 zMin) 
    name v4  (xRefine4 yRefine4 zMin)			// Back outer circle 
    name v5  (xCurve4 yCurve4 zMin) 	 		// Back inner circle
    name v6  (xMax yMax zMin) 
    name v7  (xWall2 yMax zMin) 
    name v8  (xRefine3 yMax zMin) 
    name v9  (xRefine3 yRefine3 zMin) 			// Back outer circle 
    name v10 (xCurve3 yCurve3 zMin) 			// Back inner circle
    name v11 (xCurve1 yCurve1 zMin) 			// Back inner circle
    name v12 (xRefine1 yRefine1 zMin) 			// Back outer circle 
    name v13 (xMin yRefine1 zMin) 
    name v14 (xMin yWall2 zMin) 
    name v15 (xRefine2 yRefine2 zMin)			// Back outer circle 
    name v16 (xCurve2 yCurve2 zMin) 	 		// Back inner circle
    name v17 (xMin yMax zMin) 
    name v18 (xWall1 yMax zMin) 
    name v19 (xMax yWall1 zMin) 
    name v20 (xRefine6 yRefine6 zMin) 			// Back outer circle 
    name v21 (xCurve6 yCurve6 zMin) 	 		// Back inner circle
    name v22 (xMax yMin zMin) 
    name v23 (xWall2 yMin zMin) 
    name v24 (xRefine7 yMin zMin)
    name v25 (xRefine7 yRefine7 zMin) 			// Back outer circle 
    name v26 (xCurve7 yCurve7 zMin) 			// Back inner circle
    name v27 (xMin yWall1 zMin) 
    name v28 (xRefine8 yRefine8 zMin) 			// Back outer circle 
    name v29 (xCurve8 yCurve8 zMin) 	 		// Back inner circle
    name v30 (xMin yMin zMin) 
    name v31 (xWall1 yMin zMin) 
    name v32 (xCurve5 yCurve5 zMax)				// Front inner circle 
    name v33 (xRefine5 yRefine5 zMax)			// Front outer circle 
    name v34 (xMax yRefine5 zMax) 
    name v35 (xMax yWall2 zMax) 
    name v36 (xRefine4 yRefine4 zMax)			// Front outer circle 
    name v37 (xCurve4 yCurve4 zMax)				// Front inner circle 
    name v38 (xMax yMax zMax) 
    name v39 (xWall2 yMax zMax) 
    name v40 (xRefine3 yMax zMax) 
    name v41 (xRefine3 yRefine3 zMax)			// Front outer circle 
    name v42 (xCurve3 yCurve3 zMax)				// Front inner circle 
    name v43 (xCurve1 yCurve1 zMax)				// Front inner circle 
    name v44 (xRefine1 yRefine1 zMax)			// Front outer circle 
    name v45 (xMin yRefine1 zMax) 
    name v46 (xMin yWall2 zMax) 
    name v47 (xRefine2 yRefine2 zMax)			// Front outer circle 
    name v48 (xCurve2 yCurve2 zMax)				// Front inner circle 
    name v49 (xMin yMax zMax) 
    name v50 (xWall1 yMax zMax) 
    name v51 (xMax yWall1 zMax) 
    name v52 (xRefine6 yRefine6 zMax)			// Front outer circle 
    name v53 (xCurve6 yCurve6 zMax)				// Front inner circle 
    name v54 (xMax yMin zMax) 
    name v55 (xWall2 yMin zMax) 
    name v56 (xRefine7 yMin zMax) 
    name v57 (xRefine7 yRefine7 zMax)			// Front outer circle 
    name v58 (xCurve7 yCurve7 zMax)				// Front inner circle 
    name v59 (xMin yWall1 zMax) 
    name v60 (xRefine8 yRefine8 zMax)			// Front outer circle 
    name v61 (xCurve8 yCurve8 zMax)				// Front inner circle 
    name v62 (xMin yMin zMax) 
    name v63 (xWall1 yMin zMax) 
);

blocks
(
    hex (v5  v4  v9  v10 v37 v36 v41 v42) (nRefCells nRefCells nZCells) edgeGrading (1 1 1) // 0
    hex (v0  v1  v4  v5  v32 v33 v36 v37) (nRefCells nRefCells nZCells) edgeGrading (1 1 1) // 1
    hex (v1  v2  v3  v4  v33 v34 v35 v36) (nEdgeCells nRefCells nZCells) edgeGrading (Gxp Gxp Gxp Gxp 1 1 1 1 1 1 1 1) // 2
    hex (v4  v3  v6  v7  v36 v35 v38 v39) (nEdgeCells nEdgeCells nZCells) edgeGrading (Gxp 1 1 Gxp Gyp 1 1 Gyp 1 1 1 1) // 3
    hex (v9  v4  v7  v8  v41 v36 v39 v40) (nRefCells nEdgeCells nZCells) edgeGrading (1 1 1 1 Gyp Gyp Gyp Gyp 1 1 1 1) // 4
    hex (v15 v16 v10 v9  v47 v48 v42 v41) (nRefCells nRefCells nZCells) edgeGrading (1 1 1) // 5
    hex (v12 v11 v16 v15 v44 v43 v48 v47) (nRefCells nRefCells nZCells) edgeGrading (1 1 1) // 6
    hex (v13 v12 v15 v14 v45 v44 v47 v46) (nEdgeCells nRefCells nZCells) edgeGrading (Gxn Gxn Gxn Gxn 1 1 1 1 1 1 1 1) // 7
    hex (v14 v15 v18 v17 v46 v47 v50 v49) (nEdgeCells nEdgeCells nZCells) edgeGrading (Gxn 1 1 Gxn 1 Gyp Gyp 1 1 1 1 1) // 8
    hex (v15 v9  v8  v18 v47 v41 v40 v50) (nRefCells nEdgeCells nZCells) edgeGrading (1 1 1 1 Gyp Gyp Gyp Gyp 1 1 1 1) // 9
    hex (v26 v25 v20 v21 v58 v57 v52 v53) (nRefCells nRefCells nZCells) edgeGrading (1 1 1) // 10
    hex (v21 v20 v1  v0  v53 v52 v33 v32) (nRefCells nRefCells nZCells) edgeGrading (1 1 1) // 1 1
    hex (v20 v19 v2  v1  v52 v51 v34 v33) (nEdgeCells nRefCells nZCells) edgeGrading (Gxp Gxp Gxp Gxp 1 1 1 1 1 1 1 1) // 12
    hex (v23 v22 v19 v20 v55 v54 v51 v52) (nEdgeCells nEdgeCells  nZCells) edgeGrading (1 Gxp Gxp 1 Gyn 1 1 Gyn 1 1 1 1) // 13
    hex (v24 v23 v20 v25 v56 v55 v52 v57) (nRefCells nEdgeCells  nZCells) edgeGrading (1 1 1 1 Gyn Gyn Gyn Gyn 1 1 1 1) // 14
    hex (v28 v29 v11 v12 v60 v61 v43 v44) (nRefCells nRefCells nZCells) edgeGrading (1 1 1) // 15
    hex (v25 v26 v29 v28 v57 v58 v61 v60) (nRefCells nRefCells nZCells) edgeGrading (1 1 1) // 16
    hex (v27 v28 v12 v13 v59 v60 v44 v45) (nEdgeCells nRefCells nZCells) edgeGrading (Gxn Gxn Gxn Gxn 1 1 1 1 1 1 1 1) // 17
    hex (v30 v31 v28 v27 v62 v63 v60 v59) (nEdgeCells nEdgeCells  nZCells) edgeGrading (1 Gxn Gxn 1 1 Gyn Gyn 1 1 1 1 1) // 18
    hex (v31 v24 v25 v28 v63 v56 v57 v60) (nRefCells nEdgeCells  nZCells) edgeGrading (1 1 1 1 Gyn Gyn Gyn Gyn 1 1 1 1) // 19
);

edges
(
spline 43 48 ( (0.062506 0.039018 zMax) (0.12501 0.050556 zMax) (0.18752 0.056596 zMax))
spline 11 16 ( (0.062506 0.039018 zMin) (0.12501 0.050556 zMin) (0.18752 0.056596 zMin))
spline 44 47 ( (-0.16431 0.16898 zMax) (-0.028773 0.27642 zMax) (0.10692 0.33559 zMax))
spline 12 15 ( (-0.16431 0.16898 zMin) (-0.028773 0.27642 zMin) (0.10692 0.33559 zMin))
spline 48 42 ( (0.31253 0.059982 zMax) (0.37504 0.058862 zMax) (0.43744 0.056431 zMax))
spline 16 10 ( (0.31253 0.059982 zMin) (0.37504 0.058862 zMin) (0.43744 0.056431 zMin))
spline 47 41 ( (0.31158 0.362 zMax) (0.38071 0.36058 zMax) (0.44983 0.35679 zMax))
spline 15 9 ( (0.31158 0.362 zMin) (0.38071 0.36058 zMin) (0.44983 0.35679 zMin))
spline 42 37 ( (0.56246 0.048597 zMax) (0.62496 0.043532 zMax) (0.68747 0.037847 zMax))
spline 10 5 ( (0.56246 0.048597 zMin) (0.62496 0.043532 zMin) (0.68747 0.037847 zMin))
spline 41 36 ( (0.58457 0.34862 zMax) (0.65002 0.34454 zMax) (0.71562 0.33876 zMax))
spline 9 4 ( (0.58457 0.34862 zMin) (0.65002 0.34454 zMin) (0.71562 0.33876 zMin))
spline 37 32 ( (0.81248 0.024838 zMax) (0.87499 0.017547 zMax) (0.93749 0.0097006 zMax))
spline 5 0 ( (0.81248 0.024838 zMin) (0.87499 0.017547 zMin) (0.93749 0.0097006 zMin))
spline 36 33 ( (0.91084 0.29856 zMax) (1.0406 0.23989 zMax) (1.1702 0.14387 zMax))
spline 4 1 ( (0.91084 0.29856 zMin) (1.0406 0.23989 zMin) (1.1702 0.14387 zMin))
spline 32 53 ( (0.93749 -0.0097006 zMax) (0.87499 -0.017547 zMax) (0.81248 -0.024838 zMax))
spline 0 21 ( (0.93749 -0.0097006 zMin) (0.87499 -0.017547 zMin) (0.81248 -0.024838 zMin))
spline 33 52 ( (1.1702 -0.14387 zMax) (1.0405 -0.23999 zMax) (0.91084 -0.29856 zMax))
spline 1 20 ( (1.1702 -0.14387 zMin) (1.0405 -0.23999 zMin) (0.91084 -0.29856 zMin))
spline 53 58 ( (0.68747 -0.037847 zMax) (0.62496 -0.043532 zMax) (0.56246 -0.048597 zMax))
spline 21 26 ( (0.68747 -0.037847 zMin) (0.62496 -0.043532 zMin) (0.56246 -0.048597 zMin))
spline 52 57 ( (0.71546 -0.33877 zMax) (0.65002 -0.34454 zMax) (0.58441 -0.34862 zMax))
spline 20 25 ( (0.71546 -0.33877 zMin) (0.65002 -0.34454 zMin) (0.58441 -0.34862 zMin))
spline 58 61 ( (0.43744 -0.056431 zMax) (0.37494 -0.058864 zMax) (0.31253 -0.059982 zMax))
spline 26 29 ( (0.43744 -0.056431 zMin) (0.37494 -0.058864 zMin) (0.31253 -0.059982 zMin))
spline 57 60 ( (0.44983 -0.35679 zMax) (0.38071 -0.36058 zMax) (0.31158 -0.362 zMax))
spline 25 28 ( (0.44983 -0.35679 zMin) (0.38071 -0.36058 zMin) (0.31158 -0.362 zMin))
spline 61 43 ( (0.18752 -0.056596 zMax) (0.12501 -0.050556 zMax) (0.062606 -0.039044 zMax))
spline 29 11 ( (0.18752 -0.056596 zMin) (0.12501 -0.050556 zMin) (0.062606 -0.039044 zMin))
spline 60 44 ( (0.10692 -0.33559 zMax) (-0.028773 -0.27642 zMax) (-0.16431 -0.16898 zMax))
spline 28 12 ( (0.10692 -0.33559 zMin) (-0.028773 -0.27642 zMin) (-0.16431 -0.16898 zMin))
);

boundary
(
    inlet
    {
        type patch;
        faces
        (
            (17 14 46 49)
            (14 13 45 46)
            (13 27 59 45)
            (27 30 62 59)
        );
    }
    outlet
    {
        type patch;
        faces
        (
            (22 19 51 54)
            (19 2 34 51)
            (2 3 35 34)
            (3 6 38 35)
        );
    }
    bottom
    {
        type wall;
        faces
        (
            (30 31 63 62)
            (31 24 56 63)
            (24 23 55 56)
            (23 22 54 55)
        );
    }
    top
    {
        type wall;
        faces
        (
            (6 7 39 38)
            (7 8 40 39)
            (8 18 50 40)
            (18 17 49 50)
        );
    }
    airfoil
    {
        type wall;
        faces
        (
            (0 5 37 32)
            (5 10 42 37)
            (10 16 48 42)
            (16 11 43 48)
            (11 29 61 43)
            (29 26 58 61)
            (26 21 53 58)
            (21 0 32 53)
        );
    }
);

mergePatchPairs
(
);

// ************************************************************************* //
