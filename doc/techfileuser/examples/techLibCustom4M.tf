; Technology File techLibCustom4M
; Generated on Jan  9 11:43:44 2007
;     with @(#)$CDS: layout.exe version 6.1.1 01/05/2007 15:50 (cds23100) $


;********************************
; CONTROLS
;********************************
controls(

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

) ;layerDefinitions


;********************************
; VIADEFS
;********************************
viaDefs(

 customViaDefs(
 ;( viaDefName libName cellName viewName layer1 layer2 resistancePerCut)
 ;( ---------- ------- -------- -------- ------ ------ ----------------)
   ( Nimp_m1_qc  techLibCustom4M Nimp_m1_qc layout Nimp Metal1 0.0)
   ( Pimp_m1_qc  techLibCustom4M Pimp_m1_qc layout Pimp Metal1 0.0)
 ) ;customViaDefs

) ;viaDefs



;********************************
; CONSTRAINT GROUPS
;********************************
constraintGroups(

 ;( group	[override] )
 ;( -----	---------- )
  ( "VLS-XLSetupM4"	nil

    interconnect(
     ( validLayers   (Metal4  Via3  Oxide  Nwell  Poly  Cont  Metal3  Via2  Metal2  Via1  Metal1  ) )
     ( errorLayer    noOverlapLayer1 )
    ) ;interconnect
  ) ;VLS-XLSetupM4

 ;( group	[override] )
 ;( -----	---------- )
  ( "VCARSetupM4"	nil

    interconnect(
     ( validLayers   (Metal4  Metal3  Metal2  Metal1  Poly  ) )
     ( validVias     (M2_M1  M3_M2  M4_M3  M1_PO  ) )
    ) ;interconnect

    spacings(
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
  ) ;VCARSetupM4
) ;constraintGroups


;********************************
; DEVICES
;********************************
devices(
tcCreateCDSDeviceClass()

cdsViaDevice(
; (name cutLayer cutPurpose layer1 purpose1 layer2 purpose2
;  row column origin stackedVias cutLayerW cutLayerL xCutSpacing yCutSpacing
;  layer1XDirOverride layer1YDirOverride layer2XDirOverride layer2YDirOverride
;  layer1Dir layer2Dir
;  layer1XDefOverride layer1YDefOverride layer2XDefOverride layer2YDefOverride
;  implantLayer1 implantLayer2 diffSpacing abutClass)

  (Nimp_m1_qc Cont drawing Nimp drawing Metal1 drawing
  3 3 centerCenter t 0.12 0.12 0.14 0.14
  0 0 0 0
  "" ""
  0.7 0.7 0.35 0.35
  nil
  nil
  0.35 "NMOS")

  (Pimp_m1_qc Cont drawing Pimp drawing Metal1 drawing
  2 2 centerCenter t 0.12 0.12 0.14 0.14
  0 0 0 0
  "" ""
  0.7 0.7 0.35 0.35
  nil
  nil
  0.35 "PMOS")
)

tfcDefineDeviceProp(
; (viewName        deviceName        propName          propValue)
  (layout          Nimp_m1_qc        function          "substrateContact")
  (layout          Pimp_m1_qc        function          "substrateContact")
)

cdsMosDevice(
; (name gatePolyLayer metalLayer contactLayer diffusionLayer
;  implantLayers 
;  gateTerminalName sourceTerminalName drainTerminalName stretchHandles
;  contSpacingMethod polyDiffExt polyContSpacing polyDiffSpacing polyPolySpacing
;  polyWidth metalContEnc metalContactEncTop metalContactEncBottom
;  metalContactEncInner metalContactEncOuter metalContactEncOverride
;  xContSpacing yContSpacing xContLayerW yContLayerL
;  diffContEnc diffPolyEnc diffSpacing diffWidth
;  abutClass fingerWidth fingerLength numFinger
;  [userFunc userArgs dfmConstrGrp singleContact])

  (pmos Poly drawing Metal1 drawing Cont drawing Pimp drawing
  (
    (("Nimp" "drawing") "gate" _def_)
    (("Pimp" "drawing") "diffusion" 0.25)
  )
  "G" "S" "D" (t t t t t t t t t t)
  "rowsCenterColsCenter" 0.7 0.7 0.35 0.35
  0.35 0.35 0 0
  0 0 ""
  0.35 0.35 0.35 0.35
  0.7 0.35 _def_ _def_
  "PMOS" 1.75 0.35 1
  )

  (nmos Poly drawing Metal1 drawing Cont drawing Nimp drawing
  nil
  "G" "S" "D" (t t t t t t t t t t)
  "rowsCenterColsCenter" _def_ 0.7 0.35 0.35
  0.35 0.35 0 0
  0 0 ""
  0.35 0.35 0.35 0.35
  0.7 0.35 _def_ _def_
  "NMOS" 1.75 0.35 1 "" nil ("dfm2" "dfm1")
  )
)

tfcDefineDeviceProp(
; (viewName        deviceName        propName          propValue)
  (layout          pmos              permuteRule       "(p S D)")
  (layout          pmos              defaultPinModel   "strong")
  (layout          pmos              function          "transistor")
  (layout          nmos              permuteRule       "(p S D)")
  (layout          nmos              function          "transistor")
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
  (pGuardRing 
    (("Pimp" "drawing")	3.5	t	truncate	0.0)
    ((("Metal1" "drawing")	1.4	t	0.0	center	0         	0         )
    )
    nil
    ((("Cont" "drawing")	0.7	0.7	t	0.0	center	0.7	0.7	0.0	minimum	nil	0.0	0.0)
    )
  )
  (nGuardRing 
    (("Nimp" "drawing")	3.5	t	truncate	0.0)
    ((("Metal1" "drawing")	1.4	t	0.0	center	0         	0         )
    )
    nil
    ((("Cont" "drawing")	0.7	0.7	t	0.0	center	0.7	0.7	0.0	distribute	nil	0.0	0.0)
    )
  )
)  ;multipartPathTemplates




) ;devices
