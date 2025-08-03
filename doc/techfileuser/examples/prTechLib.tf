; Technology File prTechLib
; Generated on Jan  9 11:44:45 2007
;     with @(#)$CDS: layout.exe version 6.1.1 01/05/2007 15:50 (cds23100) $


;********************************
; CONTROLS
;********************************
controls(
 techParams(
 ;( parameter           value             )
 ;( ----------          -----             )
  ( LEFDEF_CAPACITANCE_UNIT	1               )
 ) ;techParams

 mfgGridResolution(
      ( 0.005000 )
 ) ;mfgGridResolution

 refTechLibs(
; techLibName            
; -----------            
  "gsclib090_tech" 
  "techLib9M" 
 ) ;refTechLibs

) ;controls


;********************************
; LAYER DEFINITION
;********************************
layerDefinitions(

) ;layerDefinitions


;********************************
; VIADEFS
;********************************
viaDefs(

 standardViaDefs(
 ;( viaDefName	layer1	layer2	(cutLayer cutWidth cutHeight [resistancePerCut]) 
 ;   (cutRows	cutCol	(cutSpace)) 
 ;   (layer1Enc) (layer2Enc)	(layer1Offset)	(layer2Offset)	(origOffset) 
 ;   [implant1	 (implant1Enc)	[implant2	(implant2Enc) [well/substrate]]]) 
 ;( -------------------------------------------------------------------------- ) 
  ( VIA1ARRAY   	Metal1      Metal2      	("Via1" 0.14 0.14 1.4)
     (1 1 (0.2 0.2))
     (0.06 0.005)	(0.005 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA2ARRAY   	Metal2      Metal3      	("Via2" 0.14 0.14 1.4)
     (1 1 (0.2 0.2))
     (0.005 0.06)	(0.06 0.005)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA3ARRAY   	Metal3      Metal4      	("Via3" 0.14 0.14 1.4)
     (1 1 (0.2 0.2))
     (0.06 0.005)	(0.005 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA4ARRAY   	Metal4      Metal5      	("Via4" 0.14 0.14 1.4)
     (1 1 (0.2 0.2))
     (0.005 0.06)	(0.06 0.005)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA5ARRAY   	Metal5      Metal6      	("Via5" 0.14 0.14 1.4)
     (1 1 (0.2 0.2))
     (0.06 0.005)	(0.005 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA6ARRAY   	Metal6      Metal7      	("Via6" 0.14 0.14 1.4)
     (1 1 (0.2 0.2))
     (0.005 0.06)	(0.06 0.005)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA7ARRAY   	Metal7      Metal8      	("Via7" 0.36 0.36 0.35)
     (1 1 (0.54 0.54))
     (0.08 0.03)	(0.05 0.1)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA8ARRAY   	Metal8      Metal9      	("Via8" 0.36 0.36 0.35)
     (1 1 (0.54 0.54))
     (0.04 0.08)	(0.1 0.05)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
 ) ;standardViaDefs

 customViaDefs(
 ;( viaDefName libName cellName viewName layer1 layer2 resistancePerCut)
 ;( ---------- ------- -------- -------- ------ ------ ----------------)
  ( VIA1X_via  prTechLib  VIA1X_via  via        Metal1     Metal2     1.4)
  ( VIA1V_via  prTechLib  VIA1V_via  via        Metal1     Metal2     1.4)
  ( VIA1H_via  prTechLib  VIA1H_via  via        Metal1     Metal2     1.4)
   ( VIA2X_via        prTechLib VIA2X_via       via Metal2 Metal3 1.4)
   ( VIA2H_via        prTechLib VIA2H_via       via Metal2 Metal3 1.4)
   ( VIA2V_via        prTechLib VIA2V_via       via Metal2 Metal3 1.4)
   ( VIA3X_via        prTechLib VIA3X_via       via Metal3 Metal4 1.4)
   ( VIA3H_via        prTechLib VIA3H_via       via Metal3 Metal4 1.4)
   ( VIA3V_via        prTechLib VIA3V_via       via Metal3 Metal4 1.4)
   ( VIA4X            prTechLib VIA4X           via Metal4 Metal5 1.4)
   ( VIA4H            prTechLib VIA4H           via Metal4 Metal5 1.4)
   ( VIA4V            prTechLib VIA4V           via Metal4 Metal5 1.4)
   ( VIA5X_via    prTechLib VIA5X_via   via Metal5 Metal6 1.4)
   ( VIA5H_via    prTechLib VIA5H_via   via Metal5 Metal6 1.4)
   ( VIA5V_via    prTechLib VIA5V_via   via Metal5 Metal6 1.4)
   ( VIA6X_via        prTechLib VIA6X_via       via Metal6 Metal7 1.4)
   ( VIA6H_via        prTechLib VIA6H_via       via Metal6 Metal7 1.4)
   ( VIA6V_via        prTechLib VIA6V_via       via Metal6 Metal7 1.4)
   ( VIA7X_via        prTechLib VIA7X_via       via Metal7 Metal8 0.35)
   ( VIA7V_via        prTechLib VIA7V_via       via Metal7 Metal8 0.35)
   ( VIA7H_via        prTechLib VIA7H_via       via Metal7 Metal8 0.35)
   ( VIA8X_via        prTechLib VIA8X_via       via Metal8 Metal9 0.35)
   ( VIA8H_via        prTechLib VIA8H_via       via Metal8 Metal9 0.35)
   ( VIA8V_via        prTechLib VIA8V_via       via Metal8 Metal9 0.35)
 ) ;customViaDefs

) ;viaDefs



;********************************
; CONSTRAINT GROUPS
;********************************
constraintGroups(

 ;( group	[override] )
 ;( -----	---------- )
  ( "LEFDefaultRouteSpec"	nil

    routingGrids(
     ( horizontalPitch            "Metal1"   0.29 )
     ( verticalPitch              "Metal1"   0.29 )
     ( horizontalOffset           "Metal1"   0.145 )
     ( verticalOffset             "Metal1"   0.145 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal1"	0.12 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal2"   0.29 )
     ( verticalPitch              "Metal2"   0.29 )
     ( horizontalOffset           "Metal2"   0.145 )
     ( verticalOffset             "Metal2"   0.145 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal2"	0.15 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal3"   0.29 )
     ( verticalPitch              "Metal3"   0.29 )
     ( horizontalOffset           "Metal3"   0.145 )
     ( verticalOffset             "Metal3"   0.145 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal3"	0.15 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal4"   0.29 )
     ( verticalPitch              "Metal4"   0.29 )
     ( horizontalOffset           "Metal4"   0.145 )
     ( verticalOffset             "Metal4"   0.145 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal4"	0.15 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal5"   0.29 )
     ( verticalPitch              "Metal5"   0.29 )
     ( horizontalOffset           "Metal5"   0.145 )
     ( verticalOffset             "Metal5"   0.145 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal5"	0.15 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal6"   0.29 )
     ( verticalPitch              "Metal6"   0.29 )
     ( horizontalOffset           "Metal6"   0.145 )
     ( verticalOffset             "Metal6"   0.145 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal6"	0.15 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal7"   0.29 )
     ( verticalPitch              "Metal7"   0.29 )
     ( horizontalOffset           "Metal7"   0.145 )
     ( verticalOffset             "Metal7"   0.145 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal7"	0.15 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal8"   0.87 )
     ( verticalPitch              "Metal8"   0.87 )
     ( horizontalOffset           "Metal8"   0.435 )
     ( verticalOffset             "Metal8"   0.435 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal8"	0.46 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal9"   0.87 )
     ( verticalPitch              "Metal9"   0.87 )
     ( horizontalOffset           "Metal9"   0.435 )
     ( verticalOffset             "Metal9"   0.435 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal9"	0.46 )
    ) ;spacings

    interconnect(
     ( validLayers   (Metal1  Metal2  Metal3  Metal4  Metal5  Metal6  Metal7  Metal8  Metal9  ) )
     ( validVias     (VIA1X_via  VIA1V_via  VIA1H_via VIA2X_via  VIA2H_via  VIA2V_via VIA3X_via  VIA3H_via  VIA3V_via VIA4X  VIA4H  VIA4V VIA5X_via  VIA5H_via  VIA5V_via VIA6X_via  VIA6H_via  VIA6V_via VIA7X_via  VIA7V_via  VIA7H_via VIA8X_via  VIA8H_via  VIA8V_via ) )
    ) ;interconnect
  ) ;LEFDefaultRouteSpec

) ;constraintGroups

