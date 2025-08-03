; Technology File techLib9M
; Generated on Jan  9 11:45:38 2007
;     with @(#)$CDS: layout.exe version 6.1.1 01/05/2007 15:50 (cds23100) $


;********************************
; CONTROLS
;********************************
controls(
 techParams(
 ;( parameter           value             )
 ;( ----------          -----             )
 ) ;techParams

 mfgGridResolution(
      ( 0.005000 )
 ) ;mfgGridResolution

 refTechLibs(
; techLibName            
; -----------            
  "gpdk090" 
 ) ;refTechLibs

) ;controls


;********************************
; LAYER DEFINITION
;********************************
layerDefinitions(

 techLayers(
 ;( LayerName                 Layer#     Abbreviation )
 ;( ---------                 ------     ------------ )
 ;User-Defined Layers:
  ( Via4                      44         Via4         )
  ( Metal5                    46         Metal5       )
  ( Via5                      48         Via5         )
  ( Metal6                    50         Metal6       )
  ( Via6                      52         Via6         )
  ( Metal7                    54         Metal7       )
  ( Via7                      56         Via7         )
  ( Metal8                    58         Metal8       )
  ( Via8                      60         Via8         )
  ( Metal9                    62         Metal9       )
 ) ;techLayers

 techLayerPurposePriorities(
 ;layers are ordered from lowest to highest priority
 ;( LayerName                 Purpose    )
 ;( ---------                 -------    )
  ( Via4                      drawing    )
  ( Metal5                    drawing    )
  ( Via5                      drawing    )
  ( Metal6                    drawing    )
  ( Via6                      drawing    )
  ( Metal7                    drawing    )
  ( Via7                      drawing    )
  ( Metal8                    drawing    )
  ( Via8                      drawing    )
  ( Metal9                    drawing    )
  ( Via4                      fill       )
  ( Metal5                    fill       )
  ( Via5                      fill       )
  ( Metal6                    fill       )
  ( Via6                      fill       )
  ( Metal7                    fill       )
  ( Via7                      fill       )
  ( Metal8                    fill       )
  ( Via8                      fill       )
  ( Metal9                    fill       )
  ( Via4                      boundary   )
  ( Metal5                    boundary   )
  ( Via5                      boundary   )
  ( Metal6                    boundary   )
  ( Via6                      boundary   )
  ( Metal7                    boundary   )
  ( Via7                      boundary   )
  ( Metal8                    boundary   )
  ( Via8                      boundary   )
  ( Metal9                    boundary   )
 ) ;techLayerPurposePriorities

 techDisplays(
 ;( LayerName    Purpose      Packet          Vis Sel Con2ChgLy DrgEnbl Valid )
 ;( ---------    -------      ------          --- --- --------- ------- ----- )
  ( Via4         drawing      v4               t t t t t )
  ( Metal5       drawing      m5               t t t t t )
  ( Via5         drawing      v5               t t t t t )
  ( Metal6       drawing      m6               t t t t t )
  ( Via6         drawing      v6               t t t t t )
  ( Metal7       drawing      m7               t t t t t )
  ( Via7         drawing      v7               t t t t t )
  ( Metal8       drawing      m8               t t t t t )
  ( Via8         drawing      v8               t t t t t )
  ( Metal9       drawing      m9               t t t t t )
  ( Via4         fill         Via4_fill        t t t t nil )
  ( Metal5       fill         Metal5_fill      t t t t nil )
  ( Via5         fill         Via5_fill        t t t t nil )
  ( Metal6       fill         Metal6_fill      t t t t nil )
  ( Via6         fill         Via6_fill        t t t t nil )
  ( Metal7       fill         Metal7_fill      t t t t nil )
  ( Via7         fill         Via7_fill        t t t t nil )
  ( Metal8       fill         Metal8_fill      t t t t nil )
  ( Via8         fill         Via8_fill        t t t t nil )
  ( Metal9       fill         Metal9_fill      t t t t nil )
  ( Via4         boundary     Via4_boundary    t t t t nil )
  ( Metal5       boundary     Metal5_boundary  t t t t t )
  ( Via5         boundary     Via5_boundary    t t t t nil )
  ( Metal6       boundary     Metal6_boundary  t t t t t )
  ( Via6         boundary     Via6_boundary    t t t t nil )
  ( Metal7       boundary     Metal7_boundary  t t t t t )
  ( Via7         boundary     Via7_boundary    t t t t nil )
  ( Metal8       boundary     Metal8_boundary  t t t t t )
  ( Via8         boundary     Via8_boundary    t t t t nil )
  ( Metal9       boundary     Metal9_boundary  t t t t t )
 ) ;techDisplays

) ;layerDefinitions


;********************************
; LAYER RULES
;********************************
layerRules(

 functions(
 ;( layer                       function        [maskNumber])
 ;( -----                       --------        ------------)
  ( Via4                     	"cut"       	21           )
  ( Metal5                   	"metal"     	22           )
  ( Via5                     	"cut"       	23           )
  ( Metal6                   	"metal"     	24           )
  ( Via6                     	"cut"       	25           )
  ( Metal7                   	"metal"     	26           )
  ( Via7                     	"cut"       	27           )
  ( Metal8                   	"metal"     	28           )
  ( Via8                     	"cut"       	29           )
  ( Metal9                   	"metal"     	30           )
 ) ;functions

 routingDirections(
 ;( layer                       direction     )
 ;( -----                       ---------     )
  ( Metal5                   	"horizontal" )
  ( Metal6                   	"vertical"   )
  ( Metal7                   	"horizontal" )
  ( Metal8                   	"vertical"   )
  ( Metal9                   	"horizontal" )
 ) ;routingDirections

) ;layerRules


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
  ( VIA8V       	Metal8      Metal9      	("Via8" 0.36 0.36 0.35)
     (1 1 (0.36 0.36))
     (0.05 0.08)	(0.05 0.1)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA8H       	Metal8      Metal9      	("Via8" 0.36 0.36 0.35)
     (1 1 (0.36 0.36))
     (0.08 0.05)	(0.1 0.05)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA8X       	Metal8      Metal9      	("Via8" 0.36 0.36 0.35)
     (1 1 (0.36 0.36))
     (0.05 0.08)	(0.1 0.05)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA7H       	Metal7      Metal8      	("Via7" 0.36 0.36 0.35)
     (1 1 (0.36 0.36))
     (0.08 0.03)	(0.1 0.05)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA7V       	Metal7      Metal8      	("Via7" 0.36 0.36 0.35)
     (1 1 (0.36 0.36))
     (0.03 0.08)	(0.05 0.1)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA7X       	Metal7      Metal8      	("Via7" 0.36 0.36 0.35)
     (1 1 (0.36 0.36))
     (0.08 0.03)	(0.05 0.1)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA6V       	Metal6      Metal7      	("Via6" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.005 0.06)	(0.005 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA6H       	Metal6      Metal7      	("Via6" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.06 0.005)	(0.06 0.005)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA6X       	Metal6      Metal7      	("Via6" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.005 0.06)	(0.06 0.005)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA5V       	Metal5      Metal6      	("Via5" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.005 0.06)	(0.005 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA5H       	Metal5      Metal6      	("Via5" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.06 0.005)	(0.06 0.005)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA5X       	Metal5      Metal6      	("Via5" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.06 0.005)	(0.005 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M9_M8       	Metal8      Metal9      	("Via8" 0.36 0.36 0.35)
     (1 1 (0.36 0.36))
     (0.08 0.08)	(0.1 0.1)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M8_M7       	Metal7      Metal8      	("Via7" 0.36 0.36 0.35)
     (1 1 (0.36 0.36))
     (0.08 0.08)	(0.1 0.1)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M7_M6       	Metal6      Metal7      	("Via6" 0.14 0.14 1.4)
     (1 1 (0.2 0.2))
     (0.06 0.06)	(0.06 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M6_M5       	Metal5      Metal6      	("Via5" 0.14 0.14 1.4)
     (1 1 (0.2 0.2))
     (0.06 0.06)	(0.06 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M5_M4       	Metal4      Metal5      	("Via4" 0.14 0.14 1.4)
     (1 1 (0.2 0.2))
     (0.06 0.06)	(0.06 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
 ) ;standardViaDefs

 customViaDefs(
 ;( viaDefName libName cellName viewName layer1 layer2 resistancePerCut)
 ;( ---------- ------- -------- -------- ------ ------ ----------------)
 ) ;customViaDefs

) ;viaDefs



;********************************
; CONSTRAINT GROUPS
;********************************
constraintGroups(

 ;( group	[override] )
 ;( -----	---------- )
  ( "VLS-XLSetupM9"	nil

    interconnect(
     ( validLayers   ( Metal9  Via8  Metal8  Via7  Metal7  Via6  Metal6  Via5  Metal5  Via4  Metal4  Via3  Metal3  Via2  Metal2  Via1  Metal1  Cont  Poly  ) )
     ( errorLayer    noOverlapLayer1 )
    ) ;interconnect
  ) ;VLS-XLSetupM9

 ;( group	[override] )
 ;( -----	---------- )
  ( "VCARSetupM9"	nil

    interconnect(
     ( validLayers   (Metal9  Metal8  Metal7  Metal6  Metal5  Metal4  Metal3  Metal2  Metal1  Poly  ) )
     ( validVias     (M2_M1  M3_M2  M4_M3  M1_PO  M5_M4  M6_M5  M7_M6  M8_M7  M9_M8  ) )
    ) ;interconnect

    spacings(
     ( minWidth                   "Metal9"	0.44 )
     ( minSpacing                 "Metal9"	0.44 )
     ( minWidth                   "Metal8"	0.44 )
     ( minSpacing                 "Metal8"	0.44 )
     ( minWidth                   "Metal7"	0.14 )
     ( minSpacing                 "Metal7"	0.14 )
     ( minWidth                   "Metal6"	0.14 )
     ( minSpacing                 "Metal6"	0.14 )
     ( minWidth                   "Metal5"	0.14 )
     ( minSpacing                 "Metal5"	0.14 )
     ( minWidth                   "Metal4"	0.14 )
     ( minSpacing                 "Metal4"	0.14 )
     ( minWidth                   "Metal3"	0.14 )
     ( minSpacing                 "Metal3"	0.14 )
     ( minWidth                   "Metal2"	0.14 )
     ( minSpacing                 "Metal2"	0.14 )
     ( minWidth                   "Metal1"	0.12 )
     ( minSpacing                 "Metal1"	0.12 )
     ( minWidth                   "Poly"	0.1 )
     ( minSpacing                 "Poly"	0.12 )
    ) ;spacings
  ) ;VCARSetupM9

 ;( group	[override] )
 ;( -----	---------- )
  ( "foundry"	nil

    spacings(
     ( minWidth                   "Via4"	0.14 )
     ( minSameNetSpacing          "Via4"	0.15 )
     ( minSameNetSpacing          "Metal5"	0.14 )
    ) ;spacings

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minSpacing                 "Metal5"
	(( "width"   nil  nil 	 "length"   nil   nil  ) )
	(
	   (0.0       0.0       )	0.14      
	   (0.0       0.56      )	0.14      
	   (0.0       1.5       )	0.14      
	   (0.0       3.0       )	0.14      
	   (0.0       4.5       )	0.14      
	   (0.2005    0.0       )	0.14      
	   (0.2005    0.56      )	0.2       
	   (0.2005    1.5       )	0.2       
	   (0.2005    3.0       )	0.2       
	   (0.2005    4.5       )	0.2       
	   (1.5005    0.0       )	0.2       
	   (1.5005    0.56      )	0.2       
	   (1.5005    1.5       )	0.5       
	   (1.5005    3.0       )	0.5       
	   (1.5005    4.5       )	0.5       
	   (3.0005    0.0       )	0.5       
	   (3.0005    0.56      )	0.5       
	   (3.0005    1.5       )	0.5       
	   (3.0005    3.0       )	0.9       
	   (3.0005    4.5       )	0.9       
	   (4.5005    0.0       )	0.9       
	   (4.5005    0.56      )	0.9       
	   (4.5005    1.5       )	0.9       
	   (4.5005    3.0       )	0.9       
	   (4.5005    4.5       )	1.5       
	)
     )
    ) ;spacingTables

    spacings(
     ( minWidth                   "Via5"	0.14 )
     ( minSameNetSpacing          "Via5"	0.15 )
     ( minSameNetSpacing          "Metal6"	0.14 )
    ) ;spacings

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minSpacing                 "Metal6"
	(( "width"   nil  nil 	 "length"   nil   nil  ) )
	(
	   (0.0       0.0       )	0.14      
	   (0.0       0.56      )	0.14      
	   (0.0       1.5       )	0.14      
	   (0.0       3.0       )	0.14      
	   (0.0       4.5       )	0.14      
	   (0.2005    0.0       )	0.14      
	   (0.2005    0.56      )	0.2       
	   (0.2005    1.5       )	0.2       
	   (0.2005    3.0       )	0.2       
	   (0.2005    4.5       )	0.2       
	   (1.5005    0.0       )	0.2       
	   (1.5005    0.56      )	0.2       
	   (1.5005    1.5       )	0.5       
	   (1.5005    3.0       )	0.5       
	   (1.5005    4.5       )	0.5       
	   (3.0005    0.0       )	0.5       
	   (3.0005    0.56      )	0.5       
	   (3.0005    1.5       )	0.5       
	   (3.0005    3.0       )	0.9       
	   (3.0005    4.5       )	0.9       
	   (4.5005    0.0       )	0.9       
	   (4.5005    0.56      )	0.9       
	   (4.5005    1.5       )	0.9       
	   (4.5005    3.0       )	0.9       
	   (4.5005    4.5       )	1.5       
	)
     )
    ) ;spacingTables

    spacings(
     ( minWidth                   "Via6"	0.14 )
     ( minSameNetSpacing          "Via6"	0.15 )
     ( minSameNetSpacing          "Metal7"	0.14 )
    ) ;spacings

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minSpacing                 "Metal7"
	(( "width"   nil  nil 	 "length"   nil   nil  ) )
	(
	   (0.0       0.0       )	0.14      
	   (0.0       0.56      )	0.14      
	   (0.0       1.5       )	0.14      
	   (0.0       3.0       )	0.14      
	   (0.0       4.5       )	0.14      
	   (0.2005    0.0       )	0.14      
	   (0.2005    0.56      )	0.2       
	   (0.2005    1.5       )	0.2       
	   (0.2005    3.0       )	0.2       
	   (0.2005    4.5       )	0.2       
	   (1.5005    0.0       )	0.2       
	   (1.5005    0.56      )	0.2       
	   (1.5005    1.5       )	0.5       
	   (1.5005    3.0       )	0.5       
	   (1.5005    4.5       )	0.5       
	   (3.0005    0.0       )	0.5       
	   (3.0005    0.56      )	0.5       
	   (3.0005    1.5       )	0.5       
	   (3.0005    3.0       )	0.9       
	   (3.0005    4.5       )	0.9       
	   (4.5005    0.0       )	0.9       
	   (4.5005    0.56      )	0.9       
	   (4.5005    1.5       )	0.9       
	   (4.5005    3.0       )	0.9       
	   (4.5005    4.5       )	1.5       
	)
     )
    ) ;spacingTables

    spacings(
     ( minWidth                   "Via7"	0.36 )
     ( minSameNetSpacing          "Via7"	0.36 )
     ( minSameNetSpacing          "Metal8"	0.4 )
    ) ;spacings

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minSpacing                 "Metal8"
	(( "width"   nil  nil 	 "length"   nil   nil  ) )
	(
	   (0.0       0.0       )	0.4       
	   (0.0       1.5       )	0.4       
	   (0.0       3.0       )	0.4       
	   (0.0       4.5       )	0.4       
	   (1.5005    0.0       )	0.4       
	   (1.5005    1.5       )	0.5       
	   (1.5005    3.0       )	0.5       
	   (1.5005    4.5       )	0.5       
	   (3.0005    0.0       )	0.5       
	   (3.0005    1.5       )	0.5       
	   (3.0005    3.0       )	0.9       
	   (3.0005    4.5       )	0.9       
	   (4.5005    0.0       )	0.9       
	   (4.5005    1.5       )	0.9       
	   (4.5005    3.0       )	0.9       
	   (4.5005    4.5       )	1.5       
	)
     )
    ) ;spacingTables

    spacings(
     ( minWidth                   "Via8"	0.36 )
     ( minSameNetSpacing          "Via8"	0.36 )
     ( minSameNetSpacing          "Metal9"	0.4 )
    ) ;spacings

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minSpacing                 "Metal9"
	(( "width"   nil  nil 	 "length"   nil   nil  ) )
	(
	   (0.0       0.0       )	0.4       
	   (0.0       1.5       )	0.4       
	   (0.0       3.0       )	0.4       
	   (0.0       4.5       )	0.4       
	   (1.5005    0.0       )	0.4       
	   (1.5005    1.5       )	0.5       
	   (1.5005    3.0       )	0.5       
	   (1.5005    4.5       )	0.5       
	   (3.0005    0.0       )	0.5       
	   (3.0005    1.5       )	0.5       
	   (3.0005    3.0       )	0.9       
	   (3.0005    4.5       )	0.9       
	   (4.5005    0.0       )	0.9       
	   (4.5005    1.5       )	0.9       
	   (4.5005    3.0       )	0.9       
	   (4.5005    4.5       )	1.5       
	)
     )
    ) ;spacingTables

    spacings(
     ( minSpacing                 "Via4"	0.15 )
     ( viaSpacing                 "Via4"	(3 0.21 0.2) )
     ( minArea                    "Metal5"	0.08 )
     ( minWidth                   "Metal5"	0.14 )
     ( maxWidth                   "Metal5"	12.0 )
     ( minSpacing                 "Via5"	0.15 )
     ( viaSpacing                 "Via5"	(3 0.21 0.2) )
     ( minArea                    "Metal6"	0.08 )
     ( minWidth                   "Metal6"	0.14 )
     ( maxWidth                   "Metal6"	12.0 )
     ( minSpacing                 "Via6"	0.15 )
     ( viaSpacing                 "Via6"	(3 0.21 0.2) )
     ( minArea                    "Metal7"	0.08 )
     ( minWidth                   "Metal7"	0.14 )
     ( maxWidth                   "Metal7"	12.0 )
     ( minSpacing                 "Via7"	0.36 )
     ( viaSpacing                 "Via7"	(3 0.5 0.54) )
     ( minArea                    "Metal8"	0.2 )
     ( minWidth                   "Metal8"	0.44 )
     ( maxWidth                   "Metal8"	12.0 )
     ( minSpacing                 "Via8"	0.36 )
     ( viaSpacing                 "Via8"	(3 0.5 0.54) )
     ( minArea                    "Metal9"	0.2 )
     ( minWidth                   "Metal9"	0.44 )
     ( maxWidth                   "Metal9"	12.0 )
    ) ;spacings

    orderedSpacings(
     ( minEnclosure               "Metal5"	"Via4"		0.005 )
     ( minEnclosure               "Metal5"	"Via5"		0.005 )
     ( minEnclosure               "Metal6"	"Via5"		0.005 )
     ( minEnclosure               "Metal6"	"Via6"		0.005 )
     ( minEnclosure               "Metal7"	"Via6"		0.005 )
     ( minEnclosure               "Metal7"	"Via7"		0.03 )
     ( minEnclosure               "Metal8"	"Via7"		0.05 )
     ( minEnclosure               "Metal8"	"Via8"		0.03 )
     ( minEnclosure               "Metal9"	"Via8"		0.05 )
    ) ;orderedSpacings

    spacings(
     ( viaSpacing                 "Via4"	(3 0.2 0.2) )
     ( viaSpacing                 "Via5"	(3 0.2 0.2) )
     ( viaSpacing                 "Via6"	(3 0.2 0.2) )
     ( viaSpacing                 "Via7"	(3 0.54 0.54) )
     ( viaSpacing                 "Via8"	(3 0.54 0.54) )
    ) ;spacings

    spacings(
     ( stackable                  "Metal5"	"Metal5"		t )
     ( stackable                  "Metal6"	"Metal6"		t )
     ( stackable                  "Metal7"	"Metal7"		t )
     ( stackable                  "Metal8"	"Metal8"		t )
     ( stackable                  "Metal9"	"Metal9"		t )
     ( stackable                  "Via4"	"Via5"		t )
     ( stackable                  "Via5"	"Via6"		t )
     ( stackable                  "Via6"	"Via7"		t )
     ( stackable                  "Via7"	"Via8"		t )
     ( minProtrusionNumCut        "Via4"	(5.0 20.0 2.0 2) )
     ( minProtrusionNumCut        "Via5"	(5.0 20.0 2.0 2) )
     ( minProtrusionNumCut        "Via6"	(5.0 20.0 2.0 2) )
     ( minProtrusionNumCut        "Via7"	(5.0 20.0 2.0 2) )
     ( minProtrusionNumCut        "Via8"	(5.0 20.0 2.0 2) )
    ) ;spacings

    viaStackingLimits(
     ( 4   "Metal1"   "Metal7" )
    ) ;viaStackingLimits

  ) ;foundry
) ;constraintGroups


;********************************
; DEVICES
;********************************
devices(
tcCreateCDSDeviceClass()

multipartPathTemplates(
; ( name [masterPath] [offsetSubpaths] [encSubPaths] [subRects] )
; 
;   masterPath:
;   (layer [width] [choppable] [endType] [beginExt] [endExt] [justify] [offset]
;   [connectivity])
; 
;   offsetSubpaths:
;   (layer [width] [choppable] [separation] [justification] [begOffset] [endOffset]
;   [connectivity])
; 
;   encSubPaths:
;   (layer [enclosure] [choppable] [separation] [begOffset] [endOffset]
;   [connectivity])
; 
;   subRects:
;   (layer [width] [length] [choppable] [separation] [justification] [space] [begOffset] [endOffset] [gap] 
;   [connectivity] [beginSegOffset] [endSegOffset])
; 
;   connectivity:
;   ([I/O type] [pin] [accDir] [dispPinName] [height] [ layer]
;    [layer] [justification] [font] [textOptions] [orientation]
;    [refHandle] [offset])
; 
; ( --------------------------------------------------------------------- )
  (Metal1_8x_bus 
    (("Metal1" "drawing"))
    ((("Metal1" "drawing")	nil	t	0.24)
     (("Metal1" "drawing")	nil	t	0.48)
     (("Metal1" "drawing")	nil	t	0.72)
     (("Metal1" "drawing")	nil	t	0.96)
     (("Metal1" "drawing")	nil	t	1.2)
     (("Metal1" "drawing")	nil	t	1.44)
     (("Metal1" "drawing")	nil	t	1.68)
    )
    nil
    nil
  )
)  ;multipartPathTemplates




) ;devices
