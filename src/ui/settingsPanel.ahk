

CreateSettingsGUI(ByRef settings, ByRef localizedStrings) {
    global
    tabtitles = Info|General|Map Items|Game Data|NPCs|Immunities|Item Filter|Hotkeys|Other|Advanced

    Gui, Settings:Add, Button, x240 y445 w115 h30 gUpdate vUpdateBtn Disabled, % localizedStrings["s1"]

    Gui, Settings: Font, S8 CRed,    
    Gui, Settings:Add, Text, x90 y453 w145 h17 +Right vUnsaved Hidden gUpdateFlag, % localizedStrings["s2"]
    Gui, Settings: Font, S8 CDefault,    
    Gui, Settings: Add, Tab3, x2 y1 w360 h440 vTabList, %tabtitles%

    Gui, Settings: Tab, General
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y59 w340 h60 , % localizedStrings["s3"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, Edit, x29 y77 w250 h22 vBaseUrl gUpdateFlag
    
    Gui, Settings: Font, S7 CGray, 
    Gui, Settings: Add, Text, x30 y100 w180 h17 , Ex: http://localhost:3002
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y129 w340 h140 , % localizedStrings["s4"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, Text, x53 y152 w90 h20 , % localizedStrings["s5"]
    Gui, Settings: Add, Edit, x22 y149 w28 h20 vScale gUpdateFlag
    Gui, Settings: Add, Text, x53 y172 w50 h20 , % localizedStrings["s6"]
    Gui, Settings: Add, Edit, x22 y169 w28 h20 vOpacity gUpdateFlag
    Gui, Settings: Add, Text, x53 y192 w120 h20 , % localizedStrings["s7"]
    Gui, Settings: Add, Edit, x22 y189 w28 h20 vServerScale gUpdateFlag
    Gui, Settings: Add, Text, x253 y154 w72 h17 , % localizedStrings["s8"]
    Gui, Settings: Add, Edit, x222 y149 w28 h20 vLeftMargin gUpdateFlag
    Gui, Settings: Add, Text, x253 y174 w74 h17 , % localizedStrings["s9"]
    Gui, Settings: Add, Edit, x222 y169 w28 h20 vTopMargin gUpdateFlag
    Gui, Settings: Add, Text, x253 y194 w91 h17 , % localizedStrings["s10"]
    Gui, Settings: Add, Edit, x222 y189 w28 h20 vWallThickness gUpdateFlag
    Gui, Settings: Add, CheckBox, x22 y219 w150 h20 vAlwaysShowMap gUpdateFlag, % localizedStrings["s11"] ;" settings["alwaysShowMap"]
    Gui, Settings: Add, CheckBox, x22 y239 w180 h20 vHideTown gUpdateFlag, % localizedStrings["s12"] ;False
    ;Gui, Settings: Add, CheckBox, x222 y219 w100 h20 vEdges gUpdateFlag, % localizedStrings["s13"] ;True
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y279 w340 h130 , % localizedStrings["s14"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y299 w110 h20 vCenterMode gUpdateFlag, % localizedStrings["s15"] ;False
    Gui, Settings: Add, CheckBox, x222 y299 w120 h20 vShowPlayerDotCenter gUpdateFlag, % localizedStrings["s16"] ;True
    Gui, Settings: Add, CheckBox, x222 y319 w120 h20 vplayerAsCross gUpdateFlag, % localizedStrings["s17"] ;True
    Gui, Settings: Add, Text, x54 y322 w150 h20 , % localizedStrings["s18"]
    Gui, Settings: Add, Edit, x22 y319 w30 h20 vCenterModeXoffset gUpdateFlag, 0
    Gui, Settings: Add, Text, x54 y342 w180 h20 , % localizedStrings["s19"]
    Gui, Settings: Add, Edit, x22 y339 w30 h20 vCenterModeYoffset gUpdateFlag, -56
    Gui, Settings: Add, Text, x54 y362 w180 h20 , % localizedStrings["s20"]
    Gui, Settings: Add, Edit, x22 y359 w30 h20 vCenterModeXUnitoffset gUpdateFlag, 1
    Gui, Settings: Add, Text, x54 y382 w180 h20 , % localizedStrings["s21"]
    Gui, Settings: Add, Edit, x22 y379 w30 h20 vCenterModeYUnitoffset gUpdateFlag, 16
    Gui, Settings: Add, Text, x253 y342 w40 h20 , % localizedStrings["s22"]
    Gui, Settings: Add, Edit, x222 y339 w28 h20 vCenterModeScale gUpdateFlag, 1.7
    Gui, Settings: Add, Text, x253 y362 w50 h20 , % localizedStrings["s23"]
    Gui, Settings: Add, Edit, x222 y359 w28 h20 vCenterModeOpacity gUpdateFlag, 0.7

    Gui, Settings: Tab, Map Items
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y59 w340 h70 , % localizedStrings["s25"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y79 w140 h20 vShowPortals gUpdateFlag, % localizedStrings["s26"] ;True
    Gui, Settings: Add, Text, x215 y82 w130 h20 , % localizedStrings["s27"]
    Gui, Settings: Add, Edit, x162 y79 w50 h20 vPortalColor gUpdateFlag, 00AAFF
    Gui, Settings: Add, Text, x215 y102 w130 h20 , % localizedStrings["s28"]
    Gui, Settings: Add, Edit, x162 y99 w50 h20 vRedPortalColor gUpdateFlag, FF0000
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y139 w340 h70 , % localizedStrings["s29"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y159 w140 h20 vShowShrines gUpdateFlag, % localizedStrings["s30"] ;True
    Gui, Settings: Add, Text, x215 y162 w100 h20 , % localizedStrings["s31"]
    Gui, Settings: Add, Edit, x162 y159 w50 h20 vShrineColor gUpdateFlag, FFD700
    Gui, Settings: Add, Text, x215 y182 w90 h20 , % localizedStrings["s32"]
    Gui, Settings: Add, Edit, x192 y179 w20 h20 vShrineTextSize gUpdateFlag, 14
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y219 w340 h70 , % localizedStrings["s33"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y239 w250 h20 vShowOtherPlayers gUpdateFlag, % localizedStrings["s34"] ;True
    Gui, Settings: Add, CheckBox, x22 y259 w270 h20 vShowOtherPlayerNames gUpdateFlag, % localizedStrings["s35"] ;False
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y299 w340 h50 ,  % localizedStrings["gb1"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y319 w120 h20 vShowChests gUpdateFlag, % localizedStrings["cb1"]
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y359 w340 h50 , % localizedStrings["gb18"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, Edit, x22 y379 w25 h20 vexitTextSize gUpdateFlag, 12
    Gui, Settings: Add, Text, x50 y382 w90 h20 , % localizedStrings["gb19"]
    
    
    Gui, Settings: Add, Link, x95 y418 w200 h20 , Click <a href="https://htmlcolorcodes.com">here</a> for a HEX color chart

    Gui, Settings: Tab, Game Data
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y59 w340 h115 ,  % localizedStrings["gb2"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y79 w270 h20 vshowGameHistory  gUpdateFlag, % localizedStrings["cb2"]
    Gui, Settings: Add, CheckBox, x22 y99 w270 h20 vshowAllHistory gUpdateFlag, % localizedStrings["cb3"]
    Gui, Settings: Add, Text, x85 y122 w150 h20 , % localizedStrings["t1"]
    Gui, Settings: Add, DropDownList, x22 y119 w60 h80 vhistoryTextAlignment gUpdateFlag, LEFT||RIGHT
    Gui, Settings: Add, Text, x65 y145 w250 h20 , % localizedStrings["t4"]
    Gui, Settings: Add, Edit, x22 y142 w40 h20 vhistoryTextSize gUpdateFlag, 20
    

    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y179 w340 h95 , % localizedStrings["gb20"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y199 w200 h20 vshowGameInfo gUpdateFlag, % localizedStrings["cb4"]
    Gui, Settings: Add, Text, x85 y222 w150 h20 , % localizedStrings["t2"]
    Gui, Settings: Add, DropDownList, x22 y219 w60 h80 vgameInfoAlignment gUpdateFlag, RIGHT||LEFT
    Gui, Settings: Add, Text, x65 y245 w250 h20 , % localizedStrings["t5"]
    Gui, Settings: Add, Edit, x22 y242 w40 h20 vgameInfoFontSize gUpdateFlag, 18

    Gui, Settings: Add, CheckBox, x225 y199 w270 h20 vshowNumPlayers gUpdateFlag, % "Player count"

    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y279 w340 h50 ,  % localizedStrings["gb21"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y299 w190 h20 vshowPartyLocations gUpdateFlag,  % localizedStrings["gb22"]
    Gui, Settings: Add, Text, x265 y302 w50 h20 , % localizedStrings["gb27"]
    Gui, Settings: Add, Edit, x222 y299 w40 h20 vpartyInfoFontSize gUpdateFlag, 0

    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y340 w340 h80 ,  % localizedStrings["gb26"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y360 w190 h20 vshowResists gUpdateFlag,  % localizedStrings["gb25"]
    Gui, Settings: Add, Text, x265 y363 w50 h20 , % localizedStrings["gb27"]
    Gui, Settings: Add, Edit, x222 y360 w40 h20 vresistFontSize gUpdateFlag, 0
    Gui, Settings: Add, CheckBox, x22 y380 w190 h20 vshowHealthPc gUpdateFlag,  % localizedStrings["gb24"]
    Gui, Settings: Add, Text, x265 y383 w50 h20 , % localizedStrings["gb27"]
    Gui, Settings: Add, Edit, x222 y380 w40 h20 vhealthFontSize gUpdateFlag, 0
    

    Gui, Settings: Tab, NPCs
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y59 w340 h250 ,  % localizedStrings["gb3"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y79 w160 h20 vshowNormalMobs gUpdateFlag, % localizedStrings["cb5"]
    Gui, Settings: Add, CheckBox, x22 y99 w160 h20 vshowUniqueMobs gUpdateFlag, % localizedStrings["cb6"]
    Gui, Settings: Add, CheckBox, x22 y119 w160 h20 vshowBosses gUpdateFlag, % localizedStrings["cb7"]
    Gui, Settings: Add, CheckBox, x22 y139 w160 h20 vshowDeadMobs gUpdateFlag, % localizedStrings["cb8"]
    Gui, Settings: Add, Text, x215 y82 w110 h20 , % localizedStrings["t6"]
    Gui, Settings: Add, Edit, x182 y79 w30 h20 vnormalDotSize gUpdateFlag, 2.5
    Gui, Settings: Add, Text, x215 y102 w110 h20 , % localizedStrings["t7"]
    Gui, Settings: Add, Edit, x182 y99 w30 h20 vuniqueDotSize gUpdateFlag, 5
    Gui, Settings: Add, Text, x215 y122 w110 h20 , % localizedStrings["t8"]
    Gui, Settings: Add, Edit, x182 y119 w30 h20 vbossDotSize gUpdateFlag, 5
    Gui, Settings: Add, Text, x215 y142 w110 h20 , % localizedStrings["t9"]
    Gui, Settings: Add, Edit, x182 y139 w30 h20 vdeadDotSize gUpdateFlag, 2
    Gui, Settings: Add, Text, x95 y172 w160 h20 , % localizedStrings["t10"]
    Gui, Settings: Add, Edit, x22 y169 w70 h20 vnormalMobColor gUpdateFlag, FFFFFF
    Gui, Settings: Add, Text, x95 y192 w160 h20 , % localizedStrings["t11"]
    Gui, Settings: Add, Edit, x22 y189 w70 h20 vuniqueMobColor gUpdateFlag, D4AF37
    Gui, Settings: Add, Text, x95 y212 w160 h20 , % localizedStrings["t12"]
    Gui, Settings: Add, Edit, x22 y209 w70 h20 vbossColor gUpdateFlag, FF0000
    Gui, Settings: Add, Text, x95 y232 w160 h20 , % localizedStrings["t13"]
    Gui, Settings: Add, Edit, x22 y229 w70 h20 vdeadColor gUpdateFlag, 000000
    Gui, Settings: Add, Text, x55 y262 w190 h20 , % localizedStrings["t14"]
    Gui, Settings: Add, Edit, x22 y259 w30 h20 vnormalImmunitySize gUpdateFlag, 4
    Gui, Settings: Add, Text, x55 y282 w190 h20 , % localizedStrings["t15"]
    Gui, Settings: Add, Edit, x22 y279 w30 h20 vuniqueImmunitySize gUpdateFlag, 11

    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y314 w340 h90 ,  % localizedStrings["gb12"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y334 w160 h20 vshowMerc gUpdateFlag, % localizedStrings["gb13"]
    Gui, Settings: Add, CheckBox, x22 y354 w160 h20 vshowTownNPCs gUpdateFlag, % localizedStrings["gb14"]
    Gui, Settings: Add, CheckBox, x22 y374 w160 h20 vNPCsAsCross gUpdateFlag, % localizedStrings["gb15"]

    Gui, Settings: Add, Text, x255 y334 w90 h20 , % localizedStrings["gb16"]
    Gui, Settings: Add, Edit, x182 y332 w70 h20 vmercColor gUpdateFlag, 00ddFF
    Gui, Settings: Add, Text, x255 y354 w90 h20 , % localizedStrings["gb17"]
    Gui, Settings: Add, Edit, x182 y352 w70 h20 vtownNPCColor gUpdateFlag, FFFFFF
    Gui, Settings: Add, CheckBox, x182 y374 w160 h20 vshowTownNPCNames gUpdateFlag, % localizedStrings["gb23"]


    Gui, Settings: Add, Link, x95 y418 w200 h20 , Click <a href="https://htmlcolorcodes.com">here</a> for a HEX color chart

    Gui, Settings: Tab, Immunities
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y59 w340 h170 ,  % localizedStrings["gb4"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y79 w210 h20 vshowImmunities gUpdateFlag, % localizedStrings["cb9"]
    Gui, Settings: Add, Text, x95 y102 w140 h20 , % localizedStrings["t16"]
    Gui, Settings: Add, Edit, x22 y99 w70 h20 vphysicalImmuneColor gUpdateFlag, CD853F
    Gui, Settings: Add, Text, x95 y122 w140 h20 , % localizedStrings["t17"]
    Gui, Settings: Add, Edit, x22 y119 w70 h20 vmagicImmuneColor gUpdateFlag, FF8800
    Gui, Settings: Add, Text, x95 y142 w140 h20 , % localizedStrings["t18"]
    Gui, Settings: Add, Edit, x22 y139 w70 h20 vfireImmuneColor gUpdateFlag, FF0000
    Gui, Settings: Add, Text, x95 y162 w140 h20 , % localizedStrings["t19"]
    Gui, Settings: Add, Edit, x22 y159 w70 h20 vlightImmuneColor gUpdateFlag, FFFF00
    Gui, Settings: Add, Text, x95 y182 w140 h20 , % localizedStrings["t20"]
    Gui, Settings: Add, Edit, x22 y179 w70 h20 vcoldImmuneColor gUpdateFlag, 0000FF
    Gui, Settings: Add, Text, x95 y202 w140 h20 , % localizedStrings["t21"]
    Gui, Settings: Add, Edit, x22 y199 w70 h20 vpoisonImmuneColor gUpdateFlag, 32CD32
    Gui, Settings: Add, Link, x95 y418 w200 h20 , Click <a href="https://htmlcolorcodes.com">here</a> for a HEX color chart

    Gui, Settings: Tab, Item Filter
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y59 w340 h180 ,  % localizedStrings["gb5"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y79 w200 h20 vEnableItemFilter gUpdateFlag, % localizedStrings["cb10"]
    Gui, Settings: Add, CheckBox, x22 y99 w200 h20 vallowItemDropSounds gUpdateFlag, % localizedStrings["cb11"]
    Gui, Settings: Add, CheckBox, x22 y119 w200 h20 vshowItemStats gUpdateFlag, % "Show item stats"
    
    Gui, Settings: Add, CheckBox, x22 y139 w200 h20 vitemLogEnabled gUpdateFlag, % "Show item log"

    Gui, Settings: Add, CheckBox, x22 y159 w200 h20 vincludeVendorItems gUpdateFlag, % "Include vendor items"

    Gui, Settings: Add, Edit, x22 y182 w20 h20 vitemFontSize gUpdateFlag, 12
    Gui, Settings: Add, Text, x45 y185 w80 h20, % localizedStrings["cb23"]
    
    Gui, Settings: Add, Edit, x22 y206 w20 h20 vitemLogFontSize gUpdateFlag, % 18
    Gui, Settings: Add, Text, x45 y209 w80 h20, % "Log font size"

    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y259 w340 h135 ,  % localizedStrings["gb6"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y277 w200 h20 vallowTextToSpeech gUpdateFlag, % localizedStrings["cb12"]
    Gui, Settings: Add, Text, x55 y300 w200 h20, % localizedStrings["t23"]
    Gui, Settings: Add, Edit, x22 y297 w30 h20 vtextToSpeechVolume gUpdateFlag, 50
    Gui, Settings: Add, Text, x55 y320 w200 h20, % localizedStrings["t22"]
    Gui, Settings: Add, Edit, x22 y317 w30 h20 vtextToSpeechPitch gUpdateFlag, 1
    Gui, Settings: Add, Text, x55 y340 w200 h20, % localizedStrings["t24"]
    Gui, Settings: Add, Edit, x22 y337 w30 h20 vtextToSpeechSpeed gUpdateFlag, 1
    
    voiceList := GetVoiceList()
    chosenVoice := settings["chosenVoice"]
    oSPVoice.Voice := oSPVoice.GetVoices().Item(chosenVoice-1)
    Gui, Settings: Add, DropDownList, x22 y363 w200 h90 vChosenVoice Choose%chosenVoice% ReadOnly AltSubmit gUpdateFlag, %voiceList%
    

    Gui, Settings: Add, Link, x95 y418 w200 h20 , Click <a href="https://github.com/joffreybesos/d2r-mapview/wiki/Item-filter-configuration">here</a> for the wiki on item filter

    Gui, Settings: Tab, Other
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y59 w340 h110 ,  % localizedStrings["gb7"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y79 w270 h20 vshowWaypointLine gUpdateFlag, % localizedStrings["cb13"]
    Gui, Settings: Add, CheckBox, x22 y99 w270 h20 vshowNextExitLine gUpdateFlag, % localizedStrings["cb14"]
    Gui, Settings: Add, CheckBox, x22 y119 w270 h20 vshowBossLine gUpdateFlag, % localizedStrings["cb15"]
    Gui, Settings: Add, CheckBox, x22 y139 w270 h20 vshowQuestLine gUpdateFlag, % localizedStrings["cb16"]
    
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y175 w340 h90,  % localizedStrings["gb8"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y215 w110 h20 vshowEnemyMissiles gUpdateFlag, % localizedStrings["cb17"]
    Gui, Settings: Add, CheckBox, x22 y195 w110 h20 vshowPlayerMissiles gUpdateFlag, % localizedStrings["cb18"]
    Gui, Settings: Add, Text, x195 y198 w140 h20 , % localizedStrings["t25"]
    Gui, Settings: Add, Edit, x162 y195 w30 h20 vmissileMajorDotSize gUpdateFlag, 4
    Gui, Settings: Add, Text, x195 y218 w140 h20 , % localizedStrings["t26"]
    Gui, Settings: Add, Edit, x162 y215 w30 h20 vmissileMinorDotSize gUpdateFlag, 2
    Gui, Settings: Add, Text, x197 y238 w140 h25 , % localizedStrings["t27"]
    Gui, Settings: Add, Edit, x162 y235 w32 h20 vmissileOpacity gUpdateFlag, 0x77

    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y272 w340 h130 ,  % "HUD"
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y292 w270 h20 vitemCounterEnabled gUpdateFlag, % localizedStrings["gb29"]
    Gui, Settings: Add, Text, x55 y315 w200 h20, % localizedStrings["gb30"]
    Gui, Settings: Add, Edit, x22 y312 w30 h20 vitemCounterSize gUpdateFlag, 75
    Gui, Settings: Add, CheckBox, x22 y332 w270 h20 vbuffBarEnabled gUpdateFlag, % localizedStrings["gb31"]
    Gui, Settings: Add, Text, x55 y355 w200 h20, % localizedStrings["gb32"]
    Gui, Settings: Add, Edit, x22 y352 w30 h20 vbuffBarIconSize gUpdateFlag, 75
    Gui, Settings: Add, Text, x55 y375 w200 h20, % localizedStrings["gb33"]
    Gui, Settings: Add, Edit, x22 y372 w30 h20 vbuffBarVerticalOffset gUpdateFlag, 0    

    

    Gui, Settings: Tab, Advanced
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y59 w340 h220 ,  % localizedStrings["gb9"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, Text, x65 y82 w250 h18 , % localizedStrings["t28"]
    Gui, Settings: Add, Edit, x22 y79 w40 h20 vperformanceMode gUpdateFlag, 50ms
    Gui, Settings: Font, S7 CGray, 
    Gui, Settings: Add, Text, x22 y99 w320 h40 , % localizedStrings["t29"]

    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y128 w150 h20 vshowFPS gUpdateFlag, % localizedStrings["cb22"]
    Gui, Settings: Add, CheckBox, x22 y148 w250 h20 venablePrefetch gUpdateFlag, % localizedStrings["cb19"]
    Gui, Settings: Font, S7 CGray, 
    Gui, Settings: Add, Text, x22 y168 w320 h20 , % localizedStrings["t30"]

    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, Text, x250 y130 w250 h18 , % localizedStrings["gb28"]
    Gui, Settings: Add, Edit, x207 y127 w40 h20 vfpscap gUpdateFlag, 60

    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y189 w250 h20 venableD2ML gUpdateFlag, % localizedStrings["cb20"]
    Gui, Settings: Add, Text, x145 y212 w250 h18 , % localizedStrings["t31"]
    Gui, Settings: Add, Edit, x22 y209 w120 h20 vwindowTitle gUpdateFlag, D2R:main
    Gui, Settings: Font, S7 CGray, 
    Gui, Settings: Add, Text, x22 y229 w320 h30 , % localizedStrings["t32"]

    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y289 w340 h80 ,  % localizedStrings["gb10"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Add, CheckBox, x22 y309 w200 h20 vdebug gUpdateFlag, % localizedStrings["cb21"]
    Gui, Settings: Font, S7 CGray, 
    Gui, Settings: Add, Text, x22 y329 w320 h30 , % localizedStrings["t33"]
    Gui, Settings: Font, S8 CDefault,
    
    Gui, Settings: Tab, Hotkeys
    Gui, Settings: Font, S8 CGray, 
    Gui, Settings: Add, GroupBox, x11 y59 w340 h220 ,  % localizedStrings["gb11"]
    Gui, Settings: Font, S8 CDefault, 
    Gui, Settings: Tab, Hotkeys
    Gui, Settings: Add, Text, x115 y82 w200 h20 , % localizedStrings["t34"]
    Gui, Settings: Add, Edit, x22 y79 w90 h20 vincreaseMapSizeKey gUpdateFlag, 
    Gui, Settings: Add, Text, x115 y102 w200 h20 , % localizedStrings["t35"]
    Gui, Settings: Add, Edit, x22 y99 w90 h20 vdecreaseMapSizeKey gUpdateFlag, 
    Gui, Settings: Add, Text, x115 y122 w200 h20 , % localizedStrings["t36"]
    Gui, Settings: Add, Edit, x22 y119 w90 h20 vmoveMapLeft gUpdateFlag, 
    Gui, Settings: Add, Text, x115 y142 w200 h20 , % localizedStrings["t37"]
    Gui, Settings: Add, Edit, x22 y139 w90 h20 vmoveMapRight gUpdateFlag, 
    Gui, Settings: Add, Text, x115 y162 w200 h20 , % localizedStrings["t38"]
    Gui, Settings: Add, Edit, x22 y159 w90 h20 vmoveMapUp gUpdateFlag, 
    Gui, Settings: Add, Text, x115 y182 w200 h20 , % localizedStrings["t39"]
    Gui, Settings: Add, Edit, x22 y179 w90 h20 vmoveMapDown gUpdateFlag, 
    Gui, Settings: Add, Text, x115 y202 w200 h20 , % localizedStrings["t40"]
    Gui, Settings: Add, Edit, x22 y199 w90 h20 vhistoryToggleKey gUpdateFlag, 
    Gui, Settings: Add, Text, x115 y222 w200 h20 , % localizedStrings["t41"]
    Gui, Settings: Add, Edit, x22 y219 w90 h20 valwaysShowKey gUpdateFlag, 
    Gui, Settings: Add, Text, x115 y242 w200 h20 , % localizedStrings["t42"]
    Gui, Settings: Add, Edit, x22 y239 w90 h20 vswitchMapMode gUpdateFlag, 

    
    Gui, Settings: Add, Link, x95 y418 w200 h20 , Click <a href="https://www.autohotkey.com/docs/KeyList.htm">here</a> for possible key combos

    Gui, Settings: Tab, Info
    Gui, Settings: Font, S22 CRed,    
    Gui, Settings:Add, Text, x30 y75 w300 h250 +Center, d2r-mapview %version%
    Gui, Settings:Font, S12 CDefault
    
    Gui, Settings:Add, Text, x25 y135 w300 h120 +Center, % localizedStrings["uitext"]
    Gui, Settings: Font, S8 CDefault, 
    locale := settings["locale"]
    choiceIdx := LocaleToChoice(locale)
    Gui, Settings: Add, DropDownList, x110 y269 w140 h180 Choose%choiceIdx% AltSubmit vlocaleIdx gUpdateFlag, English|中文|Deutsch|español|français|italiano|한국어|polski|español mexicano|日本語|português|Русский|福佬話
    Gui, Settings:Font, S16 CDefault
    
    Gui, Settings:Add, Link, x70 y380 w120 h30 +Center, <a href="https://github.com/joffreybesos/d2r-mapview#readme">GitHub</a>
    Gui, Settings:Add, Link, x240 y380 w120 h30 +Center, <a href="https://discord.com/invite/qEgqyVW3uj">Discord</a>

    settingupGUI := true
    ;Gui, Settings: Show, h482 w362, d2r-mapview settings

    ; because I've renamed tabs but people might have settings saved for an old name
    if (settings["lastActiveGUITab"] == "Monsters" or settings["lastActiveGUITab"] == "Game History") {
        settings["lastActiveGUITab"] := "Info"
    }
    
    ; load settings array into GUI
    tabtitles := StrReplace(tabtitles, settings["lastActiveGUITab"], settings["lastActiveGUITab"] "|")
    GuiControl, Settings:, TabList, % "|" tabtitles
    GuiControl, Settings:, baseUrl, % settings["baseUrl"]
    
    chosen := "Choose" settings["chosenVoice"]
    GuiControl, Settings:, Options, chosenVoice, %chosen%

    locale := settings["locale"]
    localeChoice := LocaleToChoice(locale)
    guiChoice := "Choose" localeChoice
    GuiControl, Settings:, Options, localeIdx, %guiChoice%

    GuiControl, Settings:, scale, % settings["scale"]
    GuiControl, Settings:, leftMargin, % settings["leftMargin"]
    GuiControl, Settings:, topMargin, % settings["topMargin"]
    GuiControl, Settings:, opacity, % settings["opacity"]
    GuiControl, Settings:, alwaysShowMap, % settings["alwaysShowMap"]
    GuiControl, Settings:, hideTown, % settings["hideTown"]
    GuiControl, Settings:, edges, % settings["edges"]
    GuiControl, Settings:, wallThickness, % settings["wallThickness"]
    GuiControl, Settings:, centerMode, % settings["centerMode"]
    GuiControl, Settings:, centerModeScale, % settings["centerModeScale"]
    GuiControl, Settings:, serverScale, % settings["serverScale"]
    GuiControl, Settings:, centerModeOpacity, % settings["centerModeOpacity"]
    GuiControl, Settings:, centerModeXoffset, % settings["centerModeXoffset"]
    GuiControl, Settings:, centerModeYoffset, % settings["centerModeYoffset"]
    GuiControl, Settings:, centerModeXUnitoffset, % settings["centerModeXUnitoffset"]
    GuiControl, Settings:, centerModeYUnitoffset, % settings["centerModeYUnitoffset"]
    
    GuiControl, Settings:, showGameHistory, % settings["showGameHistory"]
    GuiControl, Settings:, historyTextSize, % settings["historyTextSize"]
    if (settings["historyTextAlignment"] == "LEFT") {
        GuiControl, Settings:, historyTextAlignment, |LEFT||RIGHT
    } else {
        GuiControl, Settings:, historyTextAlignment, |LEFT|RIGHT||
    }
    GuiControl, Settings:, showAllHistory, % settings["showAllHistory"]
    GuiControl, Settings:, showGameInfo, % settings["showGameInfo"]
    GuiControl, Settings:, gameInfoFontSize, % settings["gameInfoFontSize"]
    if (settings["gameInfoAlignment"] == "LEFT") {
        GuiControl, Settings:, gameInfoAlignment, |LEFT||RIGHT
    } else {
        GuiControl, Settings:, gameInfoAlignment, |LEFT|RIGHT||
    }
    GuiControl, Settings:, showPartyLocations, % settings["showPartyLocations"]
    GuiControl, Settings:, showResists, % settings["showResists"]
    GuiControl, Settings:, showHealthPc, % settings["showHealthPc"]
    GuiControl, Settings:, partyInfoFontSize, % settings["partyInfoFontSize"]
    GuiControl, Settings:, resistFontSize, % settings["resistFontSize"]
    GuiControl, Settings:, healthFontSize, % settings["healthFontSize"]
    GuiControl, Settings:, showNumPlayers, % settings["showNumPlayers"]
    
    GuiControl, Settings:, showNormalMobs, % settings["showNormalMobs"]
    GuiControl, Settings:, showUniqueMobs, % settings["showUniqueMobs"]
    GuiControl, Settings:, showBosses, % settings["showBosses"]
    GuiControl, Settings:, showDeadMobs, % settings["showDeadMobs"]
    GuiControl, Settings:, showImmunities, % settings["showImmunities"]
    GuiControl, Settings:, showPlayerDotCenter, % settings["showPlayerDotCenter"]
    GuiControl, Settings:, playerAsCross, % settings["playerAsCross"]
    GuiControl, Settings:, showOtherPlayers, % settings["showOtherPlayers"]
    GuiControl, Settings:, showOtherPlayerNames, % settings["showOtherPlayerNames"]
    GuiControl, Settings:, showShrines, % settings["showShrines"]
    GuiControl, Settings:, showPortals, % settings["showPortals"]
    GuiControl, Settings:, showChests, % settings["showChests"]
    GuiControl, Settings:, exitTextSize, % settings["exitTextSize"]

    GuiControl, Settings:, enableItemFilter, % settings["enableItemFilter"]
    GuiControl, Settings:, itemLogEnabled, % settings["itemLogEnabled"]
    GuiControl, Settings:, itemLogFontSize, % settings["itemLogFontSize"]
    GuiControl, Settings:, allowTextToSpeech, % settings["allowTextToSpeech"]
    GuiControl, Settings:, textToSpeechVolume, % settings["textToSpeechVolume"]
    GuiControl, Settings:, textToSpeechPitch, % settings["textToSpeechPitch"]
    GuiControl, Settings:, textToSpeechSpeed, % settings["textToSpeechSpeed"]
    GuiControl, Settings:, allowItemDropSounds, % settings["allowItemDropSounds"]
    GuiControl, Settings:, itemFontSize, % settings["itemFontSize"]
    GuiControl, Settings:, includeVendorItems, % settings["includeVendorItems"]
    GuiControl, Settings:, buffBarEnabled, % settings["buffBarEnabled"]
    GuiControl, Settings:, buffBarIconSize, % settings["buffBarIconSize"]
    GuiControl, Settings:, buffBarVerticalOffset, % settings["buffBarVerticalOffset"]
    
    GuiControl, Settings:, bossColor, % settings["bossColor"]
    GuiControl, Settings:, deadColor, % settings["deadColor"]

    GuiControl, Settings:, showMerc, % settings["showMerc"]
    GuiControl, Settings:, mercColor, % settings["mercColor"]
    GuiControl, Settings:, showTownNPCs, % settings["showTownNPCs"]
    GuiControl, Settings:, townNPCColor, % settings["townNPCColor"]
    GuiControl, Settings:, NPCsAsCross, % settings["NPCsAsCross"]
    GuiControl, Settings:, showTownNPCNames, % settings["showTownNPCNames"]

    GuiControl, Settings:, normalDotSize, % settings["normalDotSize"]
    GuiControl, Settings:, normalImmunitySize, % settings["normalImmunitySize"]
    GuiControl, Settings:, uniqueDotSize, % settings["uniqueDotSize"]
    GuiControl, Settings:, uniqueImmunitySize, % settings["uniqueImmunitySize"]
    GuiControl, Settings:, deadDotSize, % settings["deadDotSize"]
    GuiControl, Settings:, bossDotSize, % settings["bossDotSize"]
    GuiControl, Settings:, physicalImmuneColor, % settings["physicalImmuneColor"]
    GuiControl, Settings:, magicImmuneColor, % settings["magicImmuneColor"]
    GuiControl, Settings:, fireImmuneColor, % settings["fireImmuneColor"]
    GuiControl, Settings:, lightImmuneColor, % settings["lightImmuneColor"]
    GuiControl, Settings:, coldImmuneColor, % settings["coldImmuneColor"]
    GuiControl, Settings:, poisonImmuneColor, % settings["poisonImmuneColor"]

    GuiControl, Settings:, portalColor, % settings["portalColor"]
    GuiControl, Settings:, redPortalColor, % settings["redPortalColor"]
    GuiControl, Settings:, shrineColor, % settings["shrineColor"]
    GuiControl, Settings:, baseItemColor, % settings["baseItemColor"]
    GuiControl, Settings:, shrineTextSize, % settings["shrineTextSize"]

    GuiControl, Settings:, showWaypointLine, % settings["showWaypointLine"]
    GuiControl, Settings:, showNextExitLine, % settings["showNextExitLine"]
    GuiControl, Settings:, showBossLine, % settings["showBossLine"]
    GuiControl, Settings:, showQuestLine, % settings["showQuestLine"]

    GuiControl, Settings:, itemCounterEnabled, % settings["itemCounterEnabled"]
    GuiControl, Settings:, itemCounterSize, % settings["itemCounterSize"]
    GuiControl, Settings:, showItemStats, % settings["showItemStats"]

    GuiControl, Settings:, increaseMapSizeKey, % settings["increaseMapSizeKey"]
    GuiControl, Settings:, decreaseMapSizeKey, % settings["decreaseMapSizeKey"]
    GuiControl, Settings:, alwaysShowKey, % settings["alwaysShowKey"]
    GuiControl, Settings:, moveMapLeft, % settings["moveMapLeft"]
    GuiControl, Settings:, moveMapRight, % settings["moveMapRight"]
    GuiControl, Settings:, moveMapUp, % settings["moveMapUp"]
    GuiControl, Settings:, moveMapDown, % settings["moveMapDown"]
    GuiControl, Settings:, switchMapMode, % settings["switchMapMode"]
    GuiControl, Settings:, historyToggleKey, % settings["historyToggleKey"]

    GuiControl, Settings:, performanceMode, % settings["performanceMode"]
    GuiControl, Settings:, showFPS, % settings["showFPS"]
    GuiControl, Settings:, enablePrefetch, % settings["enablePrefetch"]
    GuiControl, Settings:, enableD2ML, % settings["enableD2ML"]
    GuiControl, Settings:, windowTitle, % settings["windowTitle"]
    GuiControl, Settings:, debug, % settings["debug"]
    GuiControl, Settings:, fpscap, % settings["fpscap"]



    GuiControl, Settings:, showPlayerMissiles, % settings["showPlayerMissiles"]
    GuiControl, Settings:, showEnemyMissiles, % settings["showEnemyMissiles"]
    GuiControl, Settings:, missileOpacity, % settings["missileOpacity"]
    ; GuiControl, Settings:, missileColorPhysicalMajor, % settings["missileColorPhysicalMajor"]
    ; GuiControl, Settings:, missileColorPhysicalMinor, % settings["missileColorPhysicalMinor"]
    ; GuiControl, Settings:, missileFireMajorColor, % settings["missileFireMajorColor"]
    ; GuiControl, Settings:, missileFireMinorColor, % settings["missileFireMinorColor"]
    ; GuiControl, Settings:, missileIceMajorColor, % settings["missileIceMajorColor"]
    ; GuiControl, Settings:, missileIceMinorColor, % settings["missileIceMinorColor"]
    ; GuiControl, Settings:, missileLightMajorColor, % settings["missileLightMajorColor"]
    ; GuiControl, Settings:, missileLightMinorColor, % settings["missileLightMinorColor"]
    ; GuiControl, Settings:, missilePoisonMajorColor, % settings["missilePoisonMajorColor"]
    ; GuiControl, Settings:, missilePoisonMinorColor, % settings["missilePoisonMinorColor"]
    ; GuiControl, Settings:, missileMagicMajorColor, % settings["missileMagicMajorColor"]
    ; GuiControl, Settings:, missileMagicMinorColor, % settings["missileMagicMinorColor"]

    GuiControl, Settings:, missileMajorDotSize, % settings["missileMajorDotSize"]
    GuiControl, Settings:, missileMinorDotSize, % settings["missileMinorDotSize"]
    if (itemAlertList) {
        GuiControl, Settings:, AlertListText, % itemAlertList.toString()
    }
    
    Return

}


UpdateSettings(ByRef settings, defaultSettings) {

    ; stupid ahk doesn't let me update the array value directly here
    ; so I have to save to a variable and THEN update the settings array
    ; ugh

    ; this just gets all the values of all the gui elements
    GuiControlGet, TabList, ,TabList
    GuiControlGet, baseUrl, ,baseUrl
    GuiControlGet, localeIdx, ,localeIdx
    locale := LocaleIdxToLocale(localeIdx)
    GuiControlGet, chosenVoice, ,chosenVoice
    GuiControlGet, scale, ,scale
    GuiControlGet, leftMargin, ,leftMargin
    GuiControlGet, topMargin, ,topMargin
    GuiControlGet, opacity, ,opacity
    GuiControlGet, alwaysShowMap, ,alwaysShowMap
    GuiControlGet, hideTown, ,hideTown
    GuiControlGet, edges, ,edges
    GuiControlGet, wallThickness, ,wallThickness
    GuiControlGet, centerMode, ,centerMode
    GuiControlGet, centerModeScale, ,centerModeScale
    GuiControlGet, serverScale, ,serverScale
    GuiControlGet, centerModeOpacity, ,centerModeOpacity
    GuiControlGet, centerModeXoffset, ,centerModeXoffset
    GuiControlGet, centerModeYoffset, ,centerModeYoffset
    GuiControlGet, centerModeXUnitoffset, ,centerModeXUnitoffset
    GuiControlGet, centerModeYUnitoffset, ,centerModeYUnitoffset
    GuiControlGet, showGameHistory, ,showGameHistory
    GuiControlGet, historyTextSize, ,historyTextSize
    GuiControlGet, historyTextAlignment, ,historyTextAlignment
    GuiControlGet, showAllHistory, ,showAllHistory
    GuiControlGet, showGameInfo, ,showGameInfo
    GuiControlGet, showPartyLocations, ,showPartyLocations
    GuiControlGet, showResists, ,showResists
    GuiControlGet, showHealthPc, ,showHealthPc
    GuiControlGet, partyInfoFontSize, ,partyInfoFontSize
    GuiControlGet, resistFontSize, ,resistFontSize
    GuiControlGet, healthFontSize, ,healthFontSize
    GuiControlGet, showNumPlayers, ,showNumPlayers

    GuiControlGet, gameInfoFontSize, ,gameInfoFontSize
    GuiControlGet, gameInfoAlignment, ,gameInfoAlignment
    GuiControlGet, showNormalMobs, ,showNormalMobs
    GuiControlGet, showUniqueMobs, ,showUniqueMobs
    GuiControlGet, showBosses, ,showBosses
    GuiControlGet, showDeadMobs, ,showDeadMobs
    GuiControlGet, showImmunities, ,showImmunities
    GuiControlGet, showPlayerDotCenter, ,showPlayerDotCenter
    GuiControlGet, playerAsCross, ,playerAsCross
    GuiControlGet, showOtherPlayers, ,showOtherPlayers
    GuiControlGet, showOtherPlayerNames, ,showOtherPlayerNames
    GuiControlGet, showShrines, ,showShrines
    GuiControlGet, showPortals, ,showPortals
    GuiControlGet, showChests, ,showChests
    GuiControlGet, exitTextSize, ,exitTextSize
    
    
    GuiControlGet, enableItemFilter, ,enableItemFilter
    GuiControlGet, allowTextToSpeech, ,allowTextToSpeech
    GuiControlGet, textToSpeechVolume, ,textToSpeechVolume
    GuiControlGet, textToSpeechPitch, ,textToSpeechPitch
    GuiControlGet, textToSpeechSpeed, ,textToSpeechSpeed
    GuiControlGet, allowItemDropSounds, ,allowItemDropSounds
    GuiControlGet, itemFontSize, ,itemFontSize
    GuiControlGet, itemLogFontSize, ,itemLogFontSize
    GuiControlGet, itemLogEnabled, ,itemLogEnabled
    GuiControlGet, showItemStats, ,showItemStats
    GuiControlGet, includeVendorItems, ,includeVendorItems

    GuiControlGet, normalMobColor, ,normalMobColor
    GuiControlGet, uniqueMobColor, ,uniqueMobColor
    GuiControlGet, bossColor, ,bossColor
    GuiControlGet, deadColor, ,deadColor
    GuiControlGet, showMerc, ,showMerc
    GuiControlGet, mercColor, ,mercColor
    GuiControlGet, showTownNPCs, ,showTownNPCs
    GuiControlGet, townNPCColor, ,townNPCColor
    GuiControlGet, NPCsAsCross, ,NPCsAsCross
    GuiControlGet, showTownNPCNames, ,showTownNPCNames

    GuiControlGet, normalDotSize, ,normalDotSize
    GuiControlGet, normalImmunitySize, ,normalImmunitySize
    GuiControlGet, uniqueDotSize, ,uniqueDotSize
    GuiControlGet, uniqueImmunitySize, ,uniqueImmunitySize
    GuiControlGet, deadDotSize, ,deadDotSize
    GuiControlGet, bossDotSize, ,bossDotSize
    GuiControlGet, physicalImmuneColor, ,physicalImmuneColor
    GuiControlGet, magicImmuneColor, ,magicImmuneColor
    GuiControlGet, fireImmuneColor, ,fireImmuneColor
    GuiControlGet, lightImmuneColor, ,lightImmuneColor
    GuiControlGet, coldImmuneColor, ,coldImmuneColor
    GuiControlGet, poisonImmuneColor, ,poisonImmuneColor
    GuiControlGet, portalColor, ,portalColor
    GuiControlGet, redPortalColor, ,redPortalColor
    GuiControlGet, shrineColor, ,shrineColor
    GuiControlGet, shrineTextSize, ,shrineTextSize
    GuiControlGet, showWaypointLine, ,showWaypointLine
    GuiControlGet, showNextExitLine, ,showNextExitLine
    GuiControlGet, showBossLine, ,showBossLine
    GuiControlGet, showQuestLine, ,showQuestLine
    GuiControlGet, itemCounterEnabled, ,itemCounterEnabled
    GuiControlGet, itemCounterSize, ,itemCounterSize
    GuiControlGet, buffBarEnabled, ,buffBarEnabled
    GuiControlGet, buffBarIconSize, ,buffBarIconSize
    GuiControlGet, buffBarVerticalOffset, ,buffBarVerticalOffset

    GuiControlGet, increaseMapSizeKey, ,increaseMapSizeKey
    GuiControlGet, decreaseMapSizeKey, ,decreaseMapSizeKey
    GuiControlGet, alwaysShowKey, ,alwaysShowKey
    GuiControlGet, moveMapLeft, ,moveMapLeft
    GuiControlGet, moveMapRight, ,moveMapRight
    GuiControlGet, moveMapUp, ,moveMapUp
    GuiControlGet, moveMapDown, ,moveMapDown
    GuiControlGet, switchMapMode, ,switchMapMode
    GuiControlGet, historyToggleKey, ,historyToggleKey

    GuiControlGet, performanceMode, ,performanceMode
    GuiControlGet, enablePrefetch, ,enablePrefetch
    GuiControlGet, enableD2ML, ,enableD2ML
    GuiControlGet, windowTitle, ,windowTitle
    GuiControlGet, showFPS, ,showFPS
    GuiControlGet, debug, ,debug
    GuiControlGet, fpscap, ,fpscap


    GuiControlGet, showPlayerMissiles, ,showPlayerMissiles
    GuiControlGet, showEnemyMissiles, ,showEnemyMissiles
    GuiControlGet, missileOpacity, ,missileOpacity
    ; missile colors don't exist in the GUI
    ; GuiControlGet, missileColorPhysicalMajor, ,missileColorPhysicalMajor
    ; GuiControlGet, missileColorPhysicalMinor, ,missileColorPhysicalMinor
    ; GuiControlGet, missileFireMajorColor, ,missileFireMajorColor
    ; GuiControlGet, missileFireMinorColor, ,missileFireMinorColor
    ; GuiControlGet, missileIceMajorColor, ,missileIceMajorColor
    ; GuiControlGet, missileIceMinorColor, ,missileIceMinorColor
    ; GuiControlGet, missileLightMajorColor, ,missileLightMajorColor
    ; GuiControlGet, missileLightMinorColor, ,missileLightMinorColor
    ; GuiControlGet, missilePoisonMajorColor, ,missilePoisonMajorColor
    ; GuiControlGet, missilePoisonMinorColor, ,missilePoisonMinorColor
    ; GuiControlGet, missileMagicMajorColor, ,missileMagicMajorColor
    ; GuiControlGet, missileMagicMinorColor, ,missileMagicMinorColor
    GuiControlGet, missileMajorDotSize, ,missileMajorDotSize
    GuiControlGet, missileMinorDotSize, ,missileMinorDotSize

    WinGetPos, settingsUIX, settingsUIY, , , d2r-mapview settings

    ;save the settings
    for k,v in settings
    {
        if (!SkipSetting(k)) {
            StringTrimLeft, newk, %k%, 0
            settings[k] := newk
        }
    }
    if (!settingsUIX) {
        settingsUIX := defaultSettings["settingsUIX"]
    }
    if (!settingsUIY) {
        settingsUIY := defaultSettings["settingsUIY"]
    }
    if (!padding) {
        padding := defaultSettings["padding"]
    }
    settings["settingsUIX"] := settingsUIX
    settings["settingsUIY"] := settingsUIY
    settings["lastActiveGUITab"] := TabList
    settings["baseUrl"] := baseUrl
    settings["locale"] := locale
    settings["chosenVoice"] := chosenVoice
    oSPVoice.Voice := oSPVoice.GetVoices().Item(chosenVoice-1)
    saveSettings(settings, defaultSettings)
    
}



saveSettings(settings, defaultSettings) {
    writeIniVar("settingsUIX", settings, defaultsettings)
    writeIniVar("settingsUIY", settings, defaultsettings)
    writeIniVar("lastActiveGUITab", settings, defaultsettings)
    writeIniVar("locale", settings, defaultsettings)
    writeIniVar("chosenVoice", settings, defaultsettings)
    for k,v in settings
    {
        if (!SkipSetting(k)) {
            writeIniVar(k, settings, defaultsettings)
        }
    }
}

writeIniVar(valname, settings, defaultsettings) {
    if (settings[valname] == defaultsettings[valname]) {
        IniDelete, settings.ini, Settings , %valname%
    } else {
        WriteLogDebug("Updating setting '" valname "' with " settings[valname])
        IniWrite, % settings[valname], settings.ini, Settings, %valname%
    }
}


GetVoiceList() {
    nVoices := oSPVoice.GetVoices.Count
    voiceList := ""
    if (nVoices > 1) {
        Loop, % nVoices
        {
            try {
                voiceList := voiceList "" oSPVoice.GetVoices.Item(A_Index-1).GetAttribute("Name") "|"
            } catch e {
                WriteLog("Error loading voices " + e.message)
            }
        }
        StringTrimRight, voiceList, voiceList, 1
    } else {
        voiceList := oSPVoice.GetVoices.Item(0).GetAttribute("Name")
    }
    return voiceList
}

; any setting that doesn't appaer in the UI needs to be listed here
SkipSetting(settingName) {
    switch (settingName) {
        case "missileColorPhysicalMajor": return 1
        case "missileColorPhysicalMinor": return 1
        case "missileFireMajorColor": return 1
        case "missileFireMinorColor": return 1
        case "missileIceMajorColor": return 1
        case "missileIceMinorColor": return 1
        case "missileLightMajorColor": return 1
        case "missileLightMinorColor": return 1
        case "missileMagicMajorColor": return 1
        case "missileMagicMinorColor": return 1
        case "missilePoisonMajorColor": return 1
        case "missilePoisonMinorColor": return 1
        case "gameWindowId": return 1
        case "padding": return 1
        case "edges": return 1
    }
}


LocaleToChoice(locale) {
    ;Convert selection into index
    ;English|中文|Deutsch|español|français|italiano|한국어|polski|español mexicano|日本語|português|Русский|福佬話
    switch (locale) {
        case "enUS": return 1
        case "zhTW": return 2
        case "deDE": return 3
        case "esES": return 4
        case "frFR": return 5
        case "itIT": return 6
        case "koKR": return 7
        case "plPL": return 8
        case "esMX": return 9
        case "jaJP": return 10
        case "ptBR": return 11
        case "ruRU": return 12
        case "zhCN": return 13
    }
}

LocaleIdxToLocale(localeIdx) {
    ;Convert selection into index
    ;English|中文|Deutsch|español|français|italiano|한국어|polski|español mexicano|日本語|português|Русский|福佬話
    switch (localeIdx) {
        case 1: return "enUS"
        case 2: return "zhTW"
        case 3: return "deDE"
        case 4: return "esES"
        case 5: return "frFR"
        case 6: return "itIT"
        case 7: return "koKR"
        case 8: return "plPL"
        case 9: return "esMX"
        case 10: return "jaJP"
        case 11: return "ptBR"
        case 12: return "ruRU"
        case 13: return "zhCN"
    }
}