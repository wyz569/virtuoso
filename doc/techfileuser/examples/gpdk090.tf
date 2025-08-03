; Technology File gpdk090
; Generated on Jan  9 11:42:10 2007
;     with @(#)$CDS: layout.exe version 6.1.1 01/05/2007 15:50 (cds23100) $


;********************************
; CONTROLS
;********************************
controls(
 techParams(
 ;( parameter           value             )
 ;( ----------          -----             )
  ( maskGrid       	0.005 )
  ( cadGrid        	0.005 )
  ( drcGrid        	0.005 )
  ( mfgGrid        	0.005 )
  ( scale          	1.0 )
 ) ;techParams

 mfgGridResolution(
      ( 0.005000 )
 ) ;mfgGridResolution

) ;controls


;********************************
; LAYER DEFINITION
;********************************
layerDefinitions(

 techPurposes(
 ;( PurposeName               Purpose#   Abbreviation )
 ;( -----------               --------   ------------ )
 ;User-Defined Purposes:
  ( nwell                     8          nwl          )
 ) ;techPurposes

 techLayers(
 ;( LayerName                 Layer#     Abbreviation )
 ;( ---------                 ------     ------------ )
 ;User-Defined Layers:
  ( OVERLAP                   0          OVERLAP      )
  ( Oxide                     2          Oxide        )
  ( Nwell                     6          Nwell        )
  ( Poly                      10         Poly         )
  ( Nhvt                      11         Nhvt         )
  ( Nimp                      12         Nimp         )
  ( Phvt                      13         Phvt         )
  ( Pimp                      14         Pimp         )
  ( Nzvt                      15         Nzvt         )
  ( SiProt                    16         SiProt       )
  ( Nburied                   18         Nburied      )
  ( Cont                      20         Cont         )
  ( SNA                       24         SNA          )
  ( Metal1                    30         Metal1       )
  ( Via1                      32         Via1         )
  ( Metal2                    34         Metal2       )
  ( Via2                      36         Via2         )
  ( Metal3                    38         Metal3       )
  ( Via3                      40         Via3         )
  ( Metal4                    42         Metal4       )
 ) ;techLayers

 techLayerPurposePriorities(
 ;layers are ordered from lowest to highest priority
 ;( LayerName                 Purpose    )
 ;( ---------                 -------    )
  ( OVERLAP                   boundary   )
  ( Nwell                     drawing    )
  ( Oxide                     drawing    )
  ( Poly                      drawing    )
  ( Pimp                      drawing    )
  ( Nhvt                      drawing    )
  ( Nimp                      drawing    )
  ( Phvt                      drawing    )
  ( Nzvt                      drawing    )
  ( SiProt                    drawing    )
  ( Cont                      drawing    )
  ( Metal1                    drawing    )
  ( Via1                      drawing    )
  ( Metal2                    drawing    )
  ( Via2                      drawing    )
  ( Metal3                    drawing    )
  ( Via3                      drawing    )
  ( Metal4                    drawing    )
  ( Nburied                   drawing    )
  ( text                      drawing    )
  ( background                drawing    )
  ( device                    drawing    )
  ( Metal1                    fill       )
  ( Via1                      fill       )
  ( Metal2                    fill       )
  ( Via2                      fill       )
  ( Metal3                    fill       )
  ( Via3                      fill       )
  ( Metal4                    fill       )
  ( Metal1                    boundary   )
  ( Via1                      boundary   )
  ( Metal2                    boundary   )
  ( Via2                      boundary   )
  ( Metal3                    boundary   )
  ( Via3                      boundary   )
  ( Metal4                    boundary   )
 ) ;techLayerPurposePriorities

 techDisplays(
 ;( LayerName    Purpose      Packet          Vis Sel Con2ChgLy DrgEnbl Valid )
 ;( ---------    -------      ------          --- --- --------- ------- ----- )
  ( OVERLAP      boundary     defaultPacket    t t t t nil )
  ( Nwell        drawing      nwell            t t t t t )
  ( Oxide        drawing      tox              t t t t t )
  ( Poly         drawing      poly1            t t t t t )
  ( Pimp         drawing      pplus            t t t t t )
  ( Nhvt         drawing      nhvt             t t t t t )
  ( Nimp         drawing      nplus            t t t t t )
  ( Phvt         drawing      phvt             t t t t t )
  ( Nzvt         drawing      Nzvt             t t t t t )
  ( SiProt       drawing      siprot           t t t t t )
  ( Cont         drawing      cw               t t t t t )
  ( Metal1       drawing      m1               t t t t t )
  ( Via1         drawing      v1               t t t t t )
  ( Metal2       drawing      m2               t t t t t )
  ( Via2         drawing      v2               t t t t t )
  ( Metal3       drawing      m3               t t t t t )
  ( Via3         drawing      v3               t t t t t )
  ( Metal4       drawing      m4               t t t t t )
  ( Nburied      drawing      npblk            t t t t t )
  ( text         drawing      text             t t t t t )
  ( background   drawing      background       t nil t nil nil )
  ( device       drawing      device           t t t t nil )
  ( Metal1       fill         Metal1_fill      t t t t nil )
  ( Via1         fill         Via1_fill        t t t t nil )
  ( Metal2       fill         Metal2_fill      t t t t nil )
  ( Via2         fill         Via2_fill        t t t t nil )
  ( Metal3       fill         Metal3_fill      t t t t nil )
  ( Via3         fill         Via3_fill        t t t t nil )
  ( Metal4       fill         Metal4_fill      t t t t nil )
  ( Metal1       boundary     Metal1_boundary  t t t t t )
  ( Via1         boundary     Via1_boundary    t t t t nil )
  ( Metal2       boundary     Metal2_boundary  t t t t t )
  ( Via2         boundary     Via2_boundary    t t t t nil )
  ( Metal3       boundary     Metal3_boundary  t t t t t )
  ( Via3         boundary     Via3_boundary    t t t t nil )
  ( Metal4       boundary     Metal4_boundary  t t t t t )
 ) ;techDisplays

 techDerivedLayers(
 ;( DerivedLayerName          #          composition  )
 ;( ----------------          ------     ------------ )
  ( noOverlapLayer1           10001           ( Poly       'and    Oxide     ))
 ) ;techDerivedLayers

) ;layerDefinitions


;********************************
; LAYER RULES
;********************************
layerRules(

 functions(
 ;( layer                       function        [maskNumber])
 ;( -----                       --------        ------------)
  ( Nburied                  	"nwell"     	2            )
  ( Nwell                    	"nwell"     	3            )
  ( Oxide                    	"ndiff"     	4            )
  ( Poly                     	"poly"      	6            )
  ( Nhvt                     	"nplus"     	7            )
  ( Nimp                     	"nplus"     	8            )
  ( Phvt                     	"pplus"     	9            )
  ( Pimp                     	"pplus"     	10           )
  ( Nzvt                     	"nplus"     	11           )
  ( SiProt                   	"pplus"     	12           )
  ( Cont                     	"cut"       	13           )
  ( Metal1                   	"metal"     	14           )
  ( Via1                     	"cut"       	15           )
  ( Metal2                   	"metal"     	16           )
  ( Via2                     	"cut"       	17           )
  ( Metal3                   	"metal"     	18           )
  ( Via3                     	"cut"       	19           )
  ( Metal4                   	"metal"     	20           )
 ) ;functions

 routingDirections(
 ;( layer                       direction     )
 ;( -----                       ---------     )
  ( Poly                     	"none"       )
  ( Metal1                   	"horizontal" )
  ( Metal2                   	"vertical"   )
  ( Metal3                   	"horizontal" )
  ( Metal4                   	"vertical"   )
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
  ( VIA3V       	Metal3      Metal4      	("Via3" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.005 0.06)	(0.005 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA3H       	Metal3      Metal4      	("Via3" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.06 0.005)	(0.06 0.005)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA3X       	Metal3      Metal4      	("Via3" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.06 0.005)	(0.005 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA2V       	Metal2      Metal3      	("Via2" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.005 0.06)	(0.005 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA2H       	Metal2      Metal3      	("Via2" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.06 0.005)	(0.06 0.005)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA2X       	Metal2      Metal3      	("Via2" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.005 0.06)	(0.06 0.005)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA1H       	Metal1      Metal2      	("Via1" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.06 0.005)	(0.06 0.005)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA1V       	Metal1      Metal2      	("Via1" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.005 0.06)	(0.005 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( VIA1X       	Metal1      Metal2      	("Via1" 0.14 0.14 1.4)
     (1 1 (0.15 0.15))
     (0.06 0.005)	(0.005 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M4_M3       	Metal3      Metal4      	("Via3" 0.14 0.14 1.4)
     (1 1 (0.2 0.2))
     (0.06 0.06)	(0.06 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M3_M2       	Metal2      Metal3      	("Via2" 0.14 0.14 1.4)
     (1 1 (0.2 0.2))
     (0.06 0.06)	(0.06 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M2_M1       	Metal1      Metal2      	("Via1" 0.14 0.14 1.4)
     (1 1 (0.2 0.2))
     (0.06 0.06)	(0.06 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M1_PSUB     	Oxide       Metal1      	("Cont" 0.12 0.12)
     (1 1 (0.16 0.16))
     (0.1 0.1)	(0.06 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
     Pimp        	(0.08 0.08)
  )
  ( M1_PIMP     	Oxide       Metal1      	("Cont" 0.12 0.12)
     (1 1 (0.16 0.16))
     (0.1 0.1)	(0.06 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
     Pimp        	(0.08 0.08)
  )
  ( M1_NIMP     	Oxide       Metal1      	("Cont" 0.12 0.12)
     (1 1 (0.16 0.16))
     (0.07 0.07)	(0.06 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
     Nimp        	(0.08 0.08)
  )
  ( M1_NWELL    	Oxide       Metal1      	("Cont" 0.12 0.12)
     (1 1 (0.16 0.16))
     (0.07 0.07)	(0.06 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
     Nimp        	(0.08 0.08)	Nwell       	(0.18 0.18)
  )
  ( M1_PO       	Poly        Metal1      	("Cont" 0.12 0.12)
     (1 1 (0.16 0.16))
     (0.06 0.06)	(0.06 0.06)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
 ) ;standardViaDefs

 customViaDefs(
 ;( viaDefName libName cellName viewName layer1 layer2 resistancePerCut)
 ;( ---------- ------- -------- -------- ------ ------ ----------------)
   ( ruleVia      gpdk090 ruleVia     symbolic Metal1 Metal2 0.0)
 ) ;customViaDefs

) ;viaDefs



;********************************
; CONSTRAINT GROUPS
;********************************
constraintGroups(

 ;( group	[override] )
 ;( -----	---------- )
  ( "foundry"	nil

    spacings(
     ( minWidth                   "Nwell"	0.6 )
     ( minSpacing                 "Nwell"	0.6 )
     ( minWidth                   "Oxide"	0.1 )
     ( minSpacing                 "Oxide"	0.15 )
     ( minWidth                   "Poly"	0.1 )
     ( minSpacing                 "Poly"	0.12 )
     ( minWidth                   "Pimp"	0.24 )
     ( minSpacing                 "Pimp"	0.24 )
     ( minWidth                   "Nimp"	0.24 )
     ( minSpacing                 "Nimp"	0.24 )
     ( minWidth                   "Cont"	0.12 )
     ( minSpacing                 "Cont"	0.14 )
    ) ;spacings

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minSpacing                 "Metal1"
	(( "width"   nil  nil 	 "length"   nil   nil  ) )
	(
	   (0.0       0.0       )	0.12      
	   (0.0       0.56      )	0.12      
	   (0.0       1.5       )	0.12      
	   (0.0       3.0       )	0.12      
	   (0.0       4.5       )	0.12      
	   (0.1805    0.0       )	0.12      
	   (0.1805    0.56      )	0.18      
	   (0.1805    1.5       )	0.18      
	   (0.1805    3.0       )	0.18      
	   (0.1805    4.5       )	0.18      
	   (1.5005    0.0       )	0.18      
	   (1.5005    0.56      )	0.18      
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
     ( minWidth                   "Via1"	0.14 )
    ) ;spacings

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minSpacing                 "Metal2"
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
     ( minWidth                   "Via2"	0.14 )
    ) ;spacings

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minSpacing                 "Metal3"
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
     ( minWidth                   "Via3"	0.14 )
    ) ;spacings

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minSpacing                 "Metal4"
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
     ( minWidth                   "Nburied"	3.2 )
     ( minSpacing                 "Nburied"	5.0 )
     ( minArea                    "Metal1"	0.07 )
     ( minWidth                   "Metal1"	0.12 )
     ( maxWidth                   "Metal1"	12.0 )
     ( minSpacing                 "Via1"	0.15 )
     ( viaSpacing                 "Via1"	(3 0.21 0.2) )
     ( minArea                    "Metal2"	0.08 )
     ( minWidth                   "Metal2"	0.14 )
     ( maxWidth                   "Metal2"	12.0 )
     ( minSpacing                 "Via2"	0.15 )
     ( viaSpacing                 "Via2"	(3 0.21 0.2) )
     ( minArea                    "Metal3"	0.08 )
     ( minWidth                   "Metal3"	0.14 )
     ( maxWidth                   "Metal3"	12.0 )
     ( minSpacing                 "Via3"	0.15 )
     ( viaSpacing                 "Via3"	(3 0.21 0.2) )
     ( minArea                    "Metal4"	0.08 )
     ( minWidth                   "Metal4"	0.14 )
     ( maxWidth                   "Metal4"	12.0 )
     ( minSpacing                 "Nwell"	"Oxide"		0.3 )
     ( minSpacing                 "Nwell"	"Nburied"		4.4 )
     ( minSpacing                 "Oxide"	"Poly"		0.1 )
     ( minSpacing                 "Oxide"	"Pimp"		0.02 )
     ( minSpacing                 "Oxide"	"Nimp"		0.02 )
     ( minSpacing                 "Oxide"	"Cont"		0.12 )
     ( minSpacing                 "Oxide"	"Nburied"		2.2 )
     ( minSpacing                 "Poly"	"Pimp"		0.18 )
     ( minSpacing                 "Poly"	"Nimp"		0.18 )
     ( minSpacing                 "Poly"	"Cont"		0.1 )
    ) ;spacings

    orderedSpacings(
     ( minEnclosure               "Metal1"	"Cont"		0.0 )
     ( minEnclosure               "Oxide"	"Poly"		0.2 )
     ( minEnclosure               "Nimp"	"Oxide"		0.14 )
     ( minEnclosure               "Nimp"	"Poly"		0.18 )
     ( minEnclosure               "Pimp"	"Poly"		0.12 )
     ( minEnclosure               "Pimp"	"Oxide"		0.18 )
     ( minEnclosure               "Nwell"	"Oxide"		0.14 )
     ( minEnclosure               "Metal1"	"Via1"		0.005 )
     ( minEnclosure               "Metal2"	"Via1"		0.005 )
     ( minEnclosure               "Metal2"	"Via2"		0.005 )
     ( minEnclosure               "Metal3"	"Via2"		0.005 )
     ( minEnclosure               "Metal3"	"Via3"		0.005 )
     ( minEnclosure               "Metal4"	"Via3"		0.005 )
    ) ;orderedSpacings

    spacings(
     ( viaSpacing                 "Via1"	(3 0.2 0.2) )
     ( viaSpacing                 "Via2"	(3 0.2 0.2) )
     ( viaSpacing                 "Via3"	(3 0.2 0.2) )
    ) ;spacings


    spacings(
     ( stackable                  "Metal1"	"Metal1"		t )
     ( stackable                  "Metal2"	"Metal2"		t )
     ( stackable                  "Metal3"	"Metal3"		t )
     ( stackable                  "Metal4"	"Metal4"		t )
     ( stackable                  "Via1"	"Via2"		t )
     ( stackable                  "Via2"	"Via3"		t )
     ( minProtrusionNumCut        "Cont"	(5.0 20.0 2.0 2) )
     ( minProtrusionNumCut        "Via1"	(5.0 20.0 2.0 2) )
     ( minProtrusionNumCut        "Via2"	(5.0 20.0 2.0 2) )
     ( minProtrusionNumCut        "Via3"	(5.0 20.0 2.0 2) )
    ) ;spacings

  ) ;foundry
) ;constraintGroups


;********************************
; DEVICES
;********************************
devices(
tcCreateCDSDeviceClass()

ruleContactDevice(
; ( viaName (layer1 purpose1 layer1BBox1 [layer1BBox2 ...])
;           (viaLayer viaPurpose viaLayerBBox1 [viaLayerBBox2 ...])
;           (layer2 purpose2 layer2BBox1 [layer2BBox2 ...])
; )
  ( ruleVia
    ( Metal1 drawing
       ( -1.500000 -0.900000 1.500000 0.900000 )
    )
    ( Via1 drawing
       ( -0.900000 -0.300000 -0.300000 0.300000 )
       ( 0.300000 -0.300000 0.900000 0.300000 )
    )
    ( Metal2 drawing
       ( -1.500000 -0.900000 1.500000 0.900000 )
    )
  )
)

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
  ("N-Tap" 
    (("Oxide" "drawing")	(plus (techParam "CONTW1") (times 2 (techParam "CONTE1")))	t)
    ((("Metal1" "drawing")	(plus (techParam "CONTW1") (times 2 (techParam "METAL1E2")))	t	0         	center	(minus (difference (techParam "CONTE1") (techParam "METAL1E2")))	
     (minus	(difference (techParam "CONTE1") (techParam "METAL1E2"))	))
     (("Nwell" "drawing")	(techParam "NWW1")	t	0         	center	0.18	0.18)
    )
    ((("Nimp" "drawing")	(minus (techParam "NIMPE2"))	t)
    )
    ((("Cont" "drawing")	(techParam "CONTW1")	(techParam "CONTW1")	t	0         	center	(techParam "CONTSP1")	(quotient (minus (techParam "CONTSP1")) 2)	(quotient (minus (techParam "CONTSP1")) 2)	distribute)
    )
  )
  ("P-Tap" 
    (("Oxide" "drawing")	(plus (techParam "CONTW1") (times 2 (techParam "CONTE1")))	t)
    ((("Metal1" "drawing")	(plus (techParam "CONTW1") (times 2 (techParam "METAL1E2")))	t	0         	center	(minus (difference (techParam "CONTE1") (techParam "METAL1E2")))	
     (minus	(difference (techParam "CONTE1") (techParam "METAL1E2"))	))
    )
    ((("Pimp" "drawing")	(minus (techParam "PIMPE2"))	t)
    )
    ((("Cont" "drawing")	(techParam "CONTW1")	(techParam "CONTW1")	t	0         	center	(techParam "CONTSP1")	(quotient (minus (techParam "CONTSP1")) 2)	(quotient (minus (techParam "CONTSP1")) 2)	distribute)
    )
  )
)  ;multipartPathTemplates

) ;devices
