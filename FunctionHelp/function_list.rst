_FL#1
**********
RST output
**********


(!= x1 x2 ... xn) -> True if any arguments are not equal
========================================================

(* x1 x2 ... xn) -> z
=====================

(+ x1 x2 ... xn) -> z
=====================

(- x1 x2 ... xn) -> z
=====================
 (- x) -> -x

(/ x y) -> z
============

(< x1 x2 ... xn) -> True if x1 < x2 < ... < xn
==============================================

(<= x1 x2 ... xn) -> True if x1 <= x2 <= ... <= xn
==================================================

(= x1 x2 ... xn) -> True if all arguments are equal
===================================================

(> x1 x2 ... xn) -> True if x1 > x2 > ... > xn
==============================================

(>= x1 x2 ... xn) -> True if x1 >= x2 >= ... >= xn
==================================================

(@ list index) -> item index from list
======================================

(abs x) -> z
============

(add x1 x2 ... xn) -> z
=======================

(and exp1 exp2 ... expn) -> True/Nil
====================================
Returns Nil if any argument is Nil, otherwise returns last argument

(append a b [...]) -> lists are concatenated
============================================

(apply exp arg1 arg2 ... argn list) -> Result
=============================================

(armGetRepairCost type) -> Cost to repair 1 hit point
=====================================================

(armGetRepairTech type) -> Tech level required to repair
========================================================

(block localsList exp1 exp2 ... expn) -> value of expn
======================================================

(cat s1 s2 ... sn) -> string
============================

(ceil x) -> y
=============

(cnvDrawImage x y imageDesc [screen] [ID]) -> True/Nil
======================================================

(cnvDrawLine xFrom yFrom xTo yTo width color [screen] [ID]) -> True/Nil
=======================================================================

(cnvDrawRect x y width height color [screen] [ID]) -> True/Nil
==============================================================

(cnvDrawText x y [width] text font color alignment [screen] [ID]) -> True/Nil
=============================================================================
font:
   - ``'Small``
   - ``'Medium``
   - ``'MediumBold``
   - ``'MediumHeavyBold``
   - ``'Large``
   - ``'LargeBold``
   - ``'Header``
   - ``'HeaderBold``
   - ``'SubTitle``
   - ``'SubTitleBold``
   - ``'SubTitleHeavyBold``
   - ``'Title``
alignment:
   - ``'left``
   - ``'center``
   - ``'right``

(convertTo type value) -> result
================================

(count list) -> number of items
===============================

(dbgLog [string]*) -> True if in debug mode, else Nil
=====================================================

(dbgOutput [string]*) -> True if in debug mode, else Nil
========================================================

(divide x y) -> z
=================

(double x) -> x as a double
===========================

(ecoExchange amount fromCurrency toCurrency) -> amount
======================================================

(enum list itemVar exp) -> value
================================
Iterate itemVar over list evaluating exp

(enumwhile list condition itemVar exp) -> value
===============================================
Iterate itemVar over list evaluating exp while condition is True

(eq x1 x2 ... xn) -> True if all arguments are equal
====================================================

(errblock localsList exp1 exp2 ... expn expErr) -> value of expn or expErr if error occurs
==========================================================================================

(error msg) -> error
====================

(filter list var boolean-exp) -> filtered list
==============================================

(find source target ['ascending|'descending] [keyIndex]) -> position of target in source (0-based)
==================================================================================================

(floor x) -> y
==============

(fmtCompose text [data]) -> string
==================================

(fmtCurrency currency [amount]) -> string
=========================================

(fmtNoun name nameFlags count formatFlags) -> string
====================================================

(fmtNumber [type] value) -> string
==================================
type:
   - ``'integer``
   - ``'power``
   - ``'speed``

(fmtPower powerInKWs) -> string
===============================

(fmtVerb verb pluralize) -> string
==================================

(for var from to exp) -> value of last expression
=================================================

(gamEnd endGameReason epitaph [scoreBonus]) -> True/Nil
=======================================================

(gamSave [options]) -> True/Nil
===============================
options:
   - ``'checkpoint`` (or Nil)
   - ``'missionCheckpoint``

(gamSetCrawlImage imageUNID) -> True/Nil
========================================

(gamSetCrawlSoundtrack soundtrackUNID) -> True/Nil
==================================================

(gamSetCrawlText text) -> True/Nil
==================================

(geq a b) -> True if a >= b
===========================

(getAPIVersion) -> version
==========================

(gr a b) -> True if a > b
=========================

(help) -> all functions
=======================

(help partial-name) -> all functions starting with name
=======================================================

(help function-name) -> help on function
========================================

(if condition exp1 [exp2]) -> exp1 if condition True, otherwise exp2
====================================================================

(int x) -> x as an integer
==========================

(objTranslate obj textID [data] [default]) -> text (or Nil)
===========================================================

(isatom exp) -> True if exp is not a list
=========================================

(iserror exp) -> True if exp is an error
========================================

(isfunction exp) -> True if exp is a function
=============================================

(isint exp) -> True if exp is an integer
========================================

(isprimitive exp) -> True if exp is a primitive
===============================================

(itmCreate itemUNID count) -> item
==================================

(itmCreateByName criteria name [count]) -> item
===============================================
criteria as itmGetTypes

(itmCreateRandom criteria levelDistribution) -> item
====================================================
criteria as itmGetTypes

(itmEnumTypes criteria item-var exp) -> value of last expression
================================================================
criteria as itmGetTypes

(itmFireEvent item|type event [data]) -> result of event
========================================================

(itmGetActualPrice item|type) -> actual price of a single item
==============================================================

(itmGetArmorInstalledLocation item) -> segment #
================================================

(itmGetArmorType item) -> type
==============================

(itmGetAverageAppearing item|type) -> average number that appear randomly
=========================================================================

(itmGetCategory item|type) -> item category
===========================================

(itmGetCount item) -> count of items
====================================

(itmGetDamageType item|type) -> damage type
===========================================

(itmGetData item attrib) -> data
================================

(itmGetFrequency item|type [level]) -> frequency
================================================

(itmGetImageDesc item|type) -> imageDesc
========================================

(itmGetInstallCost item|type [currency]) -> cost
================================================

(itmGetInstallPos item) -> installPos
=====================================

(itmGetLevel item|type) -> level
================================

(itmGetMass item|type) -> mass of single item in kg
===================================================

(itmGetMaxAppearing item|type) -> max number that appear randomly
=================================================================

(itmGetName item|type flags) -> name of item
============================================
flags
   0x001 capitalize
   0x002 pluralize
   0x004 prefix with 'the' or 'a'
   0x008 prefix with count (or 'a')
   0x010 prefix with count
   0x020 no modifiers
   0x040 prefix with 'the' or 'this' or 'these'
   0x080 short form of name
   0x100 actual name

(itmGetPrice item|type [currency]) -> price of a single item
============================================================

(itmGetProperty item|type property) -> value
============================================
property
   - ``'blindingImmune``
   - ``'canBeDisabled``
   - ``'category``
   - ``'charges``
   - ``'components``
   - ``'currency``
   - ``'damaged``
   - ``'description``
   - ``'deviceDamageImmune``
   - ``'deviceDisruptImmune``
   - ``'disintegrationImmune``
   - ``'disrupted``
   - ``'EMPImmune``
   - ``'hp``
   - ``'installed``
   - ``'known``
   - ``'maxCharges``
   - ``'maxHP``
   - ``'omnidirectional``
   - ``'radiationImmune``
   - ``'repairCost``
   - ``'repairLevel``
   - ``'shatterImmune``

(itmGetStaticData item attrib) -> data
======================================

(itmGetType item) -> itemUNID
=============================

(itmGetTypeData item|type attrib) -> data
=========================================

(itmGetTypes criteria) -> list of itemUNIDs
===========================================
criteria
   - ``*``                  Include all item categories
   - ``a``                  Include armor devices
   - ``b``                  Include misc devices
   - ``c``                  Include cargo hold devices
   - ``d``                  Include all devices
   - ``f``                  Include fuel
   - ``l``                  Include launcher devices
   - ``m/M``                Include missiles and ammo / missiles only
   - ``p``                  Include primary weapon devices
   - ``r``                  Include reactor devices
   - ``s``                  Include shield devices
   - ``t``                  Include misc items
   - ``u``                  Include useful items
   - ``v``                  Include drive devices
   - ``w``                  Include all weapon devices
   - ``V``                  Include virtual items
   - ``~``                  Exclude category
   - ``^``                  Require category
   - ``+/-xyz``             Require / exclude items with attribute
   - ``+/-UNID:xyz``        Require / exclude items with unid
   - ``+/-launchedBy:xyz``  Require / exclude ammo launched by unid
   - ``+/-damageType:xyz``  Require / exclude weapons with damage
   - ``F:xyz``              Only items with the given frequency
   - ``L:x-y``              Only Items of level x to y
comparison criteria supported: < <= = => >
   < x                Only items with level less than x
   <$ x               Only items costing less than x
   <# x               Only items massing less than x

(itmGetUseScreen item|type) -> screenUNID
=========================================

(itmHasAttribute item|type attrib) -> True/Nil
==============================================

(itmHasReference item|type) -> True/Nil
=======================================

(itmIsEnhanced item) -> Nil or mods
===================================

(itmIsEqual item1 item2 [options]) -> True/Nil
==============================================
options
   - ``'ignoreInstalled``

(itmIsInstalled item) -> True/Nil
=================================

(itmIsKnown item|type) -> True/Nil
==================================

(itmMatches item|type criteria) -> True/Nilcriteria as itmGetTypes
==================================================================

(itmSetCount item count) -> item
================================

(itmSetData item attrib data [count]) -> item
=============================================

(itmSetEnhanced item mods) -> item
==================================

(itmSetKnown type|item [True/Nil]) -> True/Nil
==============================================

(itmSetProperty item property value) -> item
============================================
property
   - ``'charges`` charges
   - ``'damaged`` [True|Nil]
   - ``'disrupted`` [True|Nil|ticks]
   - ``'incCharges`` charges
   - ``'installed`` [True|Nil]

(itmSetReference item) -> True/Nil
==================================

(itmSetTypeData item attrib data) -> True/Nil
=============================================

(join list [separator]) -> string
=================================

(join list 'oxfordComma) -> string
==================================

(lambda args-list exp) -> lambda function
=========================================

(leq a b) -> True if a <= b
===========================

(list i1 i2 ... in) -> list
===========================

(lnkAppend list item) -> list
=============================

(lnkRemove list index) -> list
==============================

(lnkRemoveNil list) -> list
===========================

(lnkReplace list index item) -> list
====================================

(lookup source target ['ascending|'descending] [keyIndex]) -> found entry
=========================================================================

(loop condition exp) -> evaluate exp until condition is Nil
===========================================================

(ls a b) -> True if a < b
=========================

(make 'sequence count) -> list from 1 to count
==============================================

(make 'sequence start end [inc]) -> list from start to end
==========================================================

(map list ['excludeNil|'original|'reduceMax|'reduceMin|'reduceAverage|'reduceSum] var exp) -> list
==================================================================================================

(match list var boolean-exp) -> first item that matches
=======================================================

(max x1 x2 ... xn) -> z
=======================

(min x1 x2 ... xn) -> z
=======================

(mod ['degrees] x y) -> z
=========================

(modulo ['degrees] x y) -> z
============================

(msnAccept missionObj)
======================

(msnAddRecurringTimerEvent missionObj interval event)
=====================================================
interval in ticks

(msnAddTimerEvent missionObj delay event)
=========================================
delay in ticks

(msnCancelTimerEvent missionObj event) -> True/Nil
==================================================

(msnCreate unid owner [data]) -> missionObj|Nil
===============================================

(msnCreate unid-list owner [data]) -> missionObj|Nil
====================================================

(msnDecline missionObj)
=======================

(msnDestroy missionObj) -> True/Nil
===================================

(msnFailure missionObj [data])
==============================

(msnFind [source] criteria) -> list of missionObjs
==================================================
criteria
   - ``*``                  Include all missions states
   - ``a``                  Include active player missions
   - ``o``                  Include open missions
   - ``r``                  Include already debriefed (recorded) missions
   - ``u``                  Include non-player missions
   - ``S``                  Only missions owned by source
   - ``+/-{attrib}``        Require/exclude missions with given attribute
   - ``+/-ownerID:{id}``    Require/exclude missions with given owner
   - ``+/-unid:{unid}``     Require/exclude missions of given unid

(msnFireEvent missionObj event [data]) -> result of event
=========================================================

(msnGetData missionObj attrib) -> data
======================================

(msnGetObjRefData missionObj attrib) -> obj
===========================================

(msnGetProperty missionObj property) -> value
=============================================
property
   - ``'acceptedOn``        Tick on which player accepted mission (or Nil)
   - ``'canBeDeclined``     Mission can be declined by player
   - ``'canBeDeleted``      Mission can be deleted by player
   - ``'debrieferID``       ID of the object that will debrief the player
   - ``'forceUndockAfterDebrief``  Force undock after showing debrief screen
   - ``'id``                Mission object ID
   - ``'isActive``          Is an active player mission
   - ``'isCompleted``       Is a completed mission (player or non-player)
   - ``'isDebriefed``       Player has been debriefed
   - ``'isDeclined``        Player has declined mission
   - ``'isFailure``         Mission has failed
   - ``'isIntroShown``      Player has been shown intro text
   - ``'isOpen``            Mission is available to player
   - ``'isRecorded``        Mission has been completed and debriefed
   - ``'isSuccess``         Mission has succeeded
   - ``'isUnavailable``     Mission is unavailable to player
   - ``'name``              The name of the mission
   - ``'nodeID``            ID of the mission's owner system
   - ``'ownerID``           ID of the mission's owner object
   - ``'summary``           A summary description of the mission
   - ``'unid``              Mission type UNID

(msnGetStaticData missionObj attrib) -> data
============================================

(msnIncData missionObj attrib [increment]) -> new value
=======================================================

(msnRegisterForEvents missionObj obj)
=====================================

(msnReward missionObj [data])
=============================

(msnSetData missionObj attrib data)
===================================

(msnSetObjRefData missionObj attrib obj)
========================================

(msnSetPlayerTarget missionObj)
===============================

(msnSetProperty obj property value) -> True/Nil
===============================================
property
   - ``'debrieferID`` obj
   - ``'isDebriefed`` True|Nil
   - ``'isDeclined`` True|Nil
   - ``'isIntroShown`` True|Nil
   - ``'name`` newName
   - ``'summary`` newSummary

(msnSetUnavailable missionObj)
==============================

(msnSuccess missionObj [data])
==============================

(msnTranslate missionObj textID [data] [default]) -> text (or Nil)
==================================================================

(multiply x1 x2 ... xn) -> z
============================

(neq x1 x2 ... xn) -> True if any arguments are not equal
=========================================================

(not exp) -> True/Nil
=====================

(objAccelerate obj angle thrust [ticks]) -> velVector
=====================================================

(objAddBuyOrder obj criteria priceAdj) -> True/Nil
==================================================

(objAddConnection obj1 connectType obj2 [options]) -> connectionID
==================================================================
connectType:
   - ``'hinge``
   - ``'rod``
options:
   - ``'pos1``: position relative to obj1
   - ``'pos2``: position relative to obj2

(objAddItem obj item|type [count]) -> True/Nil
==============================================

(objAddItemEnhancement obj item enhancementType [lifetime]) -> enhancementID
============================================================================

(objAddOverlay obj overlayType [lifetime]) -> overlayID
=======================================================

(objAddOverlay obj overlayType pos rotation [lifetime]) -> overlayID
====================================================================

(objAddRandomItems obj table count) -> True/Nil
===============================================

(objAddSellOrder obj criteria priceAdj) -> True/Nil
===================================================

(objAddSubordinate obj subordinate) -> True/Nil
===============================================

(objCalcBestTarget obj [objList]) -> targetObj (or Nil)
=======================================================

(objCanAttack obj) -> True/Nil
==============================

(objCanDetectTarget obj target) -> True/Nil
===========================================

(objCanInstallItem obj item [armorSeg|deviceSlot]) -> (True/Nil resultCode resultString [itemToReplace])
========================================================================================================
resultCode
   - ``'ok``
   - ``'armorTooHeavy``
   - ``'cannotInstall``
   - ``'noDeviceSlotsLeft``
   - ``'noNonWeaponSlotsLeft``
   - ``'noWeaponSlotsLeft``
   - ``'notInstallable``
   - ``'notCompatible``
   - ``'reactorIncompatible``
   - ``'reactorOverloaded``
   - ``'reactorTooWeak``
   - ``'replacementRequired``

(objChangeEquipmentStatus obj equipment command [duration] [options]) -> True/Nil
=================================================================================
equipment
   - ``'Autopilot``
   - ``'GalacticMap``
   - ``'FriendlyFireLock``
   - ``'LRS``
   - ``'SRS``
   - ``'SRSEnhancer``
   - ``'SystemMap``
   - ``'TargetingComputer``
command
   - ``'damage``
   - ``'install``
   - ``'remove``
   - ``'repair``
duration is in ticks
options
   - ``'noMessage``

(objCharge obj [currency] amount) -> remaining balance
======================================================

(objClearIdentified obj) -> True/Nil
====================================

(objClearShowAsDestination obj) -> True/Nil
===========================================

(objCommunicate obj senderObj msg [obj] [data]) -> result
=========================================================
msg
   - ``'AbortAttack``
   - ``'AttackTarget``
   - ``'FormUp``
   - ``'QueryAttackStatus``
   - ``'Wait``

(objCredit obj [currency] amount) -> new balance
================================================

(objDamage obj weaponType objSource [pos] [options]) -> result
==============================================================
result:
   - ``'noDamage``
   - ``'absorbedByShields``
   - ``'armorHit``
   - ``'structuralHit``
   - ``'destroyed``
options:
   - ``'fullResult``           Return result as struct
   - ``'ignoreOverlays``       Hit shields and below
   - ``'ignoreShields``        Hit armor and below
   - ``'noHitEffect``          No hit effect created

(objDepleteShields obj) -> True/Nil
===================================

(objDestroy obj [objSource]) -> True/Nil
========================================

(objEnumItems obj criteria itemVar exp) -> value
================================================
criteria as objGetItems

(objFireEvent obj event [data]) -> result of event
==================================================

(objFireItemEvent obj item event [data]) -> result of event
===========================================================

(objFireItemInvoke obj item) -> True/Nil
========================================

(objFireOverlayEvent obj overlayID event [data]) -> result of event
===================================================================

(objFixParalysis obj) -> True/Nil
=================================

(objGateTo obj node entrypoint [effectID]) -> True/Nil
======================================================

(objGetArmorCriticality obj item|armorSegment) -> criticalityType
=================================================================

(objGetArmorDamage obj item|armorSegment) -> damage to armor segment
====================================================================

(objGetArmorLevel obj item|armorSegment) -> 0-100%
==================================================

(objGetArmorName obj item|armorSegment) -> name of armor (e.g., 'forward', etc.)
================================================================================

(objGetArmorRepairPrice obj [shipObj] armorItem hpToRepair) -> price (at which obj repairs)
===========================================================================================

(objGetArmorReplacePrice obj armorItem) -> price
================================================

(objGetArmorType obj item|armorSegment) -> type
===============================================

(objGetBalance obj [currency]) -> balance
=========================================

(objGetBuyPrice obj item [options]) -> price (at which obj buys item)
=====================================================================
options:
   - ``'noDonations``

(objGetCargoSpaceLeft obj) -> space left in kg
==============================================

(objGetCombatPower obj) -> 0-100
================================

(objGetDamageType obj) -> damage type
=====================================

(objGetData obj attrib) -> data
===============================

(objGetDataField obj field) -> data
===================================

(objGetDetectRange obj targetObj) -> range in light-seconds
===========================================================

(objGetDisposition obj targetObj) -> disposition of obj towards targetObj
=========================================================================
disposition:
   - ``'enemy``
   - ``'friend``
   - ``'neutral``

(objGetDistance obj destObj) -> distance in light-seconds
=========================================================

(objGetEquipmentStatus obj equipment) -> status
===============================================
equipment
   - ``'Autopilot``
   - ``'GalacticMap``
   - ``'FriendlyFireLock``
   - ``'LRS``
   - ``'SRS``
   - ``'SRSEnhancer``
   - ``'SystemMap``
   - ``'TargetingComputer``
status
   - ``'damaged``
   - ``'notInstalled``
   - ``'ready``

(objGetEventHandler obj) -> unid or Nil
=======================================

(objGetID obj) -> objID
=======================

(objGetImageDesc obj) -> imageDesc
==================================

(objGetInstalledItemDesc obj item) -> 'installed as forward armor'
==================================================================

(objGetItemProperty obj item property) -> value
===============================================
property
   - ``'enabled``
   - ``'fireArc``
   - ``'hp``
   - ``'installDevicePrice``
   - ``'installItemStatus``
   - ``'linkedFireOptions``
   - ``'maxHP``
   - ``'pos``
   - ``'removeDevicePrice``
   - ``'removeDeviceStatus``
   - ``'secondary``
All properties for itmGetProperty are also valid.

(objGetItems obj criteria) -> list of items
===========================================
criteria as itmGetTypes plus
   - ``I``                  Only installed devices
   - ``D``                  Only damaged items
   - ``N``                  Only undamaged items
   - ``S``                  Only usable items
   - ``U``                  Only uninstalled items

(objGetLevel obj) -> level
==========================

(objGetMass obj) -> mass in tons
================================

(objGetMaxPower obj) -> power (in 1/10 MWs)
===========================================

(objGetName obj [flags]) -> Name of the object
==============================================
flags
   0x001 capitalize    capitalize first letter
   0x002 plural        pluralize name
   0x004 article       prefix with 'the' or 'a'
   0x008 count         prefix with count or singular article
   0x010 countOnly     prefix with count or nothing
   0x020 noModifiers   no modifiers ('damaged' etc)
   0x040 demonstrative prefix with 'the' or 'this' or 'these'
   0x080 short         use short name
   0x100 actual        actual name (not unidentified name)

(objGetNamedItems obj name) -> list of items
============================================

(objGetNearestStargate obj) -> obj
==================================

(objGetObjByID objID) -> obj
============================

(objGetObjRefData obj attrib) -> obj
====================================

(objGetOpenDockingPortCount obj) -> count of open docking ports
===============================================================

(objGetOrderGiver obj [destroyReason]) -> obj
=============================================

(objGetOverlayData obj overlayID attrib) -> data
================================================

(objGetOverlayPos obj overlayID) -> vector
==========================================

(objGetOverlayProperty obj overlayID property) -> value
=======================================================
property
   - ``'counter``
   - ``'counterLabel``
   - ``'pos``
   - ``'rotation``
   - ``'type``

(objGetOverlayRotation obj overlayID) -> rotation
=================================================

(objGetOverlays obj [criteria|overlayType]) -> list of overlayIDs
=================================================================

(objGetOverlayType obj overlayID) -> type
=========================================

(objGetPlayerPriceAdj obj [data]) -> priceAdj (or Nil if no adj)
================================================================

(objGetPos obj) -> vector
=========================

(objGetProperty obj property) -> value
======================================
property (all)
   - ``'ascended``
   - ``'category`` -> 'beam | 'effect | 'marker | 'missile | 'ship | 'station
   - ``'commsKey``
   - ``'currency`` -> currency type UNID
   - ``'cyberDefenseLevel``
   - ``'destiny``
   - ``'dockingPorts`` -> list of structs with the keys:
   objID: ID of docked object, if any
   pos: port position
   status: 'empty | 'inUse
   - ``'hasDockingPorts``
   - ``'id``
   - ``'installArmorMaxLevel``
   - ``'installDeviceMaxLevel``
   - ``'installDeviceUpgradeOnly`` -> true if it only installs devices as part of a purchase
   - ``'known``
   - ``'level``
   - ``'mass`` -> hull mass in tons
   - ``'paintLayer`` -> 'background | 'space | 'stations | 'ships | 'effects | 'overhang
   - ``'playerMissionsGiven``
   - ``'radioactive``
   - ``'refuelMaxLevel``
   - ``'removeDeviceMaxLevel``
   - ``'repairArmorMaxLevel``
   - ``'scale`` -> 'star | 'world | 'station | 'ship | 'flotsam
   - ``'sovereign``
   - ``'stealth``
   - ``'underAttack``
property (ships)
   - ``'alwaysLeaveWreck``
   - ``'availableDeviceSlots``
   - ``'availableNonWeaponSlots``
   - ``'availableWeaponSlots``
   - ``'blindingImmune``
   - ``'cargoSpace`` -> in tons
   - ``'character``
   - ``'characterClass``
   - ``'deviceDamageImmune``
   - ``'deviceDisruptImmune``
   - ``'disintegrationImmune``
   - ``'dockedAtID``
   - ``'dockingEnabled``
   - ``'DockingPortCount``
   - ``'drivePowerUse`` -> in kW
   - ``'EMPImmune``
   - ``'fuelCapacity`` -> in He3 fuel rods
   - ``'fuelCapacityExact`` -> 2500 = 1 He3 fuel rod
   - ``'fuelCriteria`` -> criteria string
   - ``'fuelEfficiency`` -> 15 = standard, more is better
   - ``'fuelEfficiencyBonus`` -> increased efficiency over standard, in %
   - ``'fuelLeft`` -> in He3 fuel rods
   - ``'fuelLeftExact`` -> 2500 = 1 He3 fuel rod
   - ``'healerLeft``
   - ``'interiorHP``
   - ``'maxInteriorHP``
   - ``'maxFuel`` -> in He3 fuel rods
   - ``'maxFuelExact`` -> 2500 = 1 He3 fuel rod
   - ``'maxSpeed`` -> in % c
   - ``'openDockingPortCount``
   - ``'operatingSpeed`` -> 'emergency | 'full | 'half | 'quarter
   - ``'playerWingman``
   - ``'power`` -> max reactor output in kW
   - ``'powerUse`` -> current power draw in kW
   - ``'radiationImmune``
   - ``'rotation`` -> current facing in degrees, counterclockwise from right
   - ``'rotationSpeed`` -> in degrees per tick, clockwise positive
   - ``'selectedLauncher``
   - ``'selectedMissile``
   - ``'selectedWeapon``
   - ``'shatterImmune``
   - ``'thrust`` -> in GN
   - ``'thrustToWeight`` -> acceleration, 1 = 500 m/s^2 (ships stats show this / 1000)
property (stations)
   - ``'abandoned``
   - ``'active``
   - ``'angry``
   - ``'barrier``
   - ``'destNodeID``
   - ``'destStargateID``
   - ``'dockingPortCount``
   - ``'hp``
   - ``'ignoreFriendlyFire``
   - ``'immutable``
   - ``'maxHP``
   - ``'maxStructuralHP``
   - ``'openDockingPortCount``
   - ``'orbit``
   - ``'parallax``
   - ``'playerBlacklisted``
   - ``'shipConstructionEnabled``
   - ``'shipReinforcementEnabled``
   - ``'showMapLabel``
   - ``'stargateID``
   - ``'structuralHP``
property (missiles)
   - ``'lifeLeft``
   - ``'rotation``
   - ``'sourceObj``
   - ``'target``
property (markers)
   - ``'style`` -> 'smallCross
NOTE: All type properties (accessed via typGetProperty) are also valid object properties.

(objGetRefuelItemAndPrice obj objToRefuel) -> (item price)
==========================================================

(objGetSellPrice obj item ['noInventoryCheck]) -> price (at which obj sells item)
=================================================================================

(objGetShieldLevel obj) -> 0-100% (or -1 for no shields)
========================================================

(objGetShipBuyPrice obj shipObj) -> price (at which obj buys ship)
==================================================================

(objGetShipSellPrice obj shipObj) -> price (at which obj sells ship)
====================================================================

(objGetShipwreckType obj) -> unid
=================================

(objGetStargateID obj) -> gateID
================================

(objGetStaticData obj attrib) -> data
=====================================

(objGetTarget obj) -> obj
=========================

(objGetType obj) -> unid
========================

(objGetTypeData obj attrib) -> data
===================================

(objGetVel obj) -> velVector
============================

(objGetVisibleDamage obj) -> damage %
=====================================

(objHasAttribute obj attrib) -> True/Nil
========================================

(objHasItem obj item [count]) -> number of items (or Nil)
=========================================================

(objIncData obj attrib [increment]) -> new value
================================================

(objIncOverlayData obj overlayID attrib [increment]) -> new value
=================================================================

(objIncVel obj velVector) -> velVector
======================================
velVector in % of light-speed

(objIsAngryAt obj targetObj) -> True/Nil
========================================

(objIsDeviceSlotAvailable ship) -> True/Nil
===========================================

(objIsDockedAt obj stationObj) -> True/Nil
==========================================

(objIsEnemy obj target) -> True/Nil
===================================

(objIsIdentified obj) -> True/Nil
=================================

(objIsKnown obj) -> True/Nil
============================

(objIsParalyzed obj) -> True/Nil
================================

(objIsRadioactive obj) -> True/Nil
==================================

(objIsShip obj) -> True/Nil
===========================

(objJumpTo obj pos) -> True/Nil
===============================

(objLowerShields obj) -> True/Nil
=================================

(objMakeParalyzed obj ticks) -> True/Nil
========================================

(objMatches obj source filter) -> True/Nil
==========================================
criteria as sysFindObject

(objProgramDamage obj hacker progName aiLevel code) -> True/Nil
===============================================================
Chance to execute code is: 90 + 10 * (aiLevel - cyberDefenseLevel)

(objRecordBuyItem buyerObj sellerObj item [currency] price) -> True/Nil
=======================================================================

(objRegisterForEvents target obj) -> True/Nil
=============================================

(objRegisterForSystemEvents target range) -> True/Nil
=====================================================

(objRemoveItem obj item [count]) -> True/Nil
============================================

(objRemoveItemEnhancement obj item enhancementID) -> True/Nil
=============================================================

(objRemoveOverlay obj overlayID) -> True/Nil
============================================

(objRepairArmor ship item|armorSegment [hpToRepair]) -> hp repaired
===================================================================

(objResume obj [gateObj]) -> True/Nil
=====================================

(objSendMessage obj sender text) -> True/Nil
============================================

(objSetData obj attrib data) -> True/Nil
========================================

(objSetDeviceActivationDelay obj deviceItem [delay]) -> True/Nil
================================================================

(objSetEventHandler obj unid) -> True/Nil
=========================================

(objSetIdentified obj) -> True/Nil
==================================

(objSetItemData obj item attrib data [count]) -> item
=====================================================

(objSetItemProperty obj item property value [count]) -> item
============================================================
property
   - ``'charges`` charges
   - ``'damaged`` [True|Nil]
   - ``'disrupted`` [True|Nil|ticks]
   - ``'enabled`` [True|Nil|'silentDisabled|'silentEnabled]
   - ``'fireArc`` Nil|(min max)|'omnidirectional
   - ``'hp`` hitPoints
   - ``'incCharges`` charges
   - ``'linkedFireOptions`` list-of-options
   - ``'pos`` (angle radius [z])
   - ``'secondary`` [True|Nil]

(objSetKnown obj) -> True/Nil
=============================

(objSetName obj name [flags]) -> True/Nil
=========================================
flags
   0x0001 Definite article
   0x0002 Pluralize first word
   0x0004 Add 'es' to pluralize
   0x0008 Custom plural after semicolon
   0x0010 Pluralize second word
   0x0020 Reverse 'a' vs 'an'
   0x0040 No article
   0x0080 Personal name

(objSetObjRefData obj attrib obj) -> True/Nil
=============================================

(objSetOverlayData obj overlayID attrib data)
=============================================

(objSetOverlayEffectProperty obj overlayID property value)
==========================================================

(objSetOverlayPos obj overlayID pos)
====================================

(objSetOverlayProperty obj overlayID property value)
====================================================
property:
   - ``'counter``
   - ``'counterLabel``
   - ``'pos`` position
   - ``'rotation`` angle

(objSetOverlayRotation obj overlayID rotation)
==============================================

(objSetPos obj vector [rotation])
=================================

(objSetProperty obj property value) -> True/Nil
===============================================
property (ships)
   - ``'alwaysLeaveWreck`` True|Nil
   - ``'dockingEnabled`` True|Nil
   - ``'commsKey`` key
   - ``'known`` True|Nil
   - ``'operatingSpeed`` 'full|'half|'quarter|'emergency
   - ``'playerWingman`` True|Nil
   - ``'rotation`` angle
   - ``'selectedMissile`` type|item
   - ``'selectedWeapon`` type|item
   - ``'sovereign`` type
property (stations)
   - ``'angry`` True|Nil|ticks
   - ``'barrier`` True|Nil
   - ``'ignoreFriendlyFire`` True|Nil
   - ``'hp`` hitPoints
   - ``'immutable`` True|Nil
   - ``'known`` True|Nil
   - ``'maxHP`` hitPoints
   - ``'maxStructuralHP`` hitPoints
   - ``'orbit`` orbit|Nil
   - ``'paintLayer`` 'overhang|Nil
   - ``'parallax`` factor
   - ``'playerBlacklisted`` True|Nil
   - ``'shipConstructionEnabled`` True|Nil
   - ``'shipReinforcementEnabled`` True|Nil
   - ``'sovereign`` type
   - ``'structuralHP`` hitPoints

(objSetShowAsDestination obj [options]) -> True/Nil
===================================================
options:
   - ``'autoClear``            Clear when in SRS range
   - ``'autoClearOnDestroy``   Clear when destroyed
   - ``'autoClearOnDock``      Clear when player docks
   - ``'showDistance``         Show distance
   - ``'showHighlight``        Show target highlight

(objSetTradeDesc obj currency [maxCurrency replenishCurrency]) -> True/Nil
==========================================================================

(objSetTypeData obj attrib data)
================================

(objSetVel obj velVector)
=========================

(objSuspend obj)
================

(objTranslate obj textID [data] [default]) -> text (or Nil)
===========================================================

(objUnregisterForEvents target obj)
===================================

(objUnregisterForSystemEvents target)
=====================================

(or exp1 exp2 ... expn) -> True/Nil
===================================
Returns first non-Nil argument

(plyChangeShip player newShip [options]) -> True/Nil
====================================================
options:
   - ``'noOrderTransfer``
   - ``'oldShipWaits``

(plyCharge player [currency] charge) -> credits left
====================================================

(plyComposeString player string [arg1 arg2 ... argn]) -> text
=============================================================
When composing the string the following substitutions are made:
   - ``%name%``         player name
   - ``%he%``           he or she
   - ``%his%``          his or her (matching case)
   - ``%hers%``         his or hers (matching case)
   - ``%him%``          him or her (matching case)
   - ``%sir%``          sir or ma'am (matching case)
   - ``%man%``          man or woman (matching case)
   - ``%brother%``      brother or sister (matching case)
   - ``%son%``          son or daughter (matching case)
   - ``%%``             %
   - ``%1%``            arg1
   - ``%2%``            ...

(plyCredit player [currency] credit) -> credits left
====================================================

(plyDestroyed player epitaph) -> True/Nil
=========================================

(plyEnableMessage player messageID True/Nil) -> True/Nil
========================================================
messageID:
   - ``'allHints``
   - ``'allMessages``
   - ``'enabledHints``
   (plus all messageIDs for plyIsMessageEnabled)

(plyGetCredits player [currency]) -> credits left
=================================================

(plyGetGenome player) -> 'humanMale | 'humanFemale
==================================================

(plyGetItemStat player stat criteria|type) -> value
===================================================
stat:
   - ``'itemsBoughtCount``
   - ``'itemsBoughtValue``
   - ``'itemsDamagedHP``
   - ``'itemsFiredCount``
   - ``'itemsSoldCount``
   - ``'itemsSoldValue``

(plyGetKeyEventStat player stat nodeID typeCriteria) -> value
=============================================================
stat:
   - ``'enemyObjsDestroyed``
   - ``'friendlyObjsDestroyed``
   - ``'missionCompleted``
   - ``'missionFailure``
   - ``'missionSuccess``
   - ``'objsDestroyed``

(plyGetRedirectMessage player) -> text or Nil
=============================================

(plyGetStat player stat) -> value
=================================
stat:
   - ``'bestEnemyShipDestroyed``
   - ``'enemyShipsDestroyed``
   - ``'enemyStationsDestroyed``
   - ``'friendlyShipsDestroyed``
   - ``'friendlyStationsDestroyed``
   - ``'resurrectCount``
   - ``'score``
   - ``'systemData``
   - ``'systemsVisited``

(plyIncScore player scoreInc) -> score
======================================

(plyIsMessageEnabled player messageID) -> True/Nil
==================================================
messageID:
   - ``'autopilotHint``
   - ``'commsHint``
   - ``'dockHint``
   - ``'enableDeviceHint``
   - ``'fireMissileHint``
   - ``'galacticMapHint``
   - ``'gateHint``
   - ``'mapHint``
   - ``'refuelHint``
   - ``'switchMissileHint``
   - ``'useItemHint``

(plyMessage player message) -> True/Nil
=======================================

(plyRecordBuyItem player item [currency] totalPrice) -> True/Nil
================================================================

(plyRecordSellItem player item [currency] totalPrice) -> True/Nil
=================================================================

(plyRedirectMessage player True/Nil) -> True/Nil
================================================

(plyUseItem player item) -> True/Nil
====================================

(pow x y) -> z
==============

(power x y) -> z
================

(print [string]*) -> True
=========================

(printTo output [string]*) -> True
==================================
output is one or more of:
   - ``'console``
   - ``'log``

(quote exp) -> unevaluated exp
==============================

(random from to)
================

(random list)
=============

(randomGaussian low mid high) -> random number between low and high
===================================================================

(randomTable chance1 exp1 chance2 exp2 ... chancen expn) -> exp
===============================================================

(regex source pattern ['offset|'subex]) -> result
=================================================

(resColorBlend rgbDest rgbSource srcOpacity) -> rgbColor
========================================================

(resCreateImageDesc imageUNID x y width height) -> imageDesc
============================================================

(resGetImageProperty imageDesc property) -> value
=================================================
property
   - ``'height``
   - ``'width``

(rollDice count sides [bonus]) -> value
=======================================

(round ['stochastic] x) -> y
============================

(scrAddAction screen actionID pos label [key] [special] code) -> True/Nil
=========================================================================

(scrAddListFilter screen filterID label filter) -> True/Nil
===========================================================
filter can be lambda function or item criteria

(scrAddMinorAction screen actionID pos label [key] [special] code) -> True/Nil
==============================================================================

(scrEnableAction screen actionID enabled) -> True/Nil
=====================================================

(scrExitScreen screen ['forceUndock]) -> True/Nil
=================================================

(scrGetCounter screen) -> value
===============================

(scrGetData screen attrib) -> data
==================================

(scrGetDesc screen) -> text
===========================

(scrGetInputText screen) -> text
================================

(scrGetItem screen) -> item
===========================

(scrGetListCursor screen) -> cursor
===================================

(scrGetListEntry screen) -> entry
=================================

(scrGetScreen gScreen) -> screenDesc
====================================
screenDesc:
   - ``'screen``: Current screen
   - ``'pane``: Current pane
   - ``'data``: Associated data

(scrIncData screen attrib [increment]) -> value
===============================================

(scrIsActionEnabled screen actionID) -> True/Nil
================================================

(scrIsFirstOnInit screen) -> True/Nil
=====================================

(scrRefreshScreen screen) -> True/Nil
=====================================

(scrRemoveAction screen actionID) -> True/Nil
=============================================

(scrRemoveItem screen count) -> item
====================================

(scrSetActionDesc screen actionID text) -> True/Nil
===================================================

(scrSetActionLabel screen actionID label [key] [special]) -> True/Nil
=====================================================================

(scrSetBackgroundImage screen imageDesc) -> True/Nil
====================================================

(scrSetControlValue screen controlID value) -> True/Nil
=======================================================

(scrSetControlValueTranslate screen controlID textID [data]) -> True/Nil
========================================================================

(scrSetCounter screen counter) -> True/Nil
==========================================

(scrSetData screen attrib data) -> True/Nil
===========================================

(scrSetDesc screen text [text...]) -> True/Nil
==============================================

(scrSetDescTranslate screen textID [data]) -> True/Nil
======================================================

(scrSetDisplayText screen ID text [text...]) -> True/Nil
========================================================

(scrSetInputText screen text) -> True/Nil
=========================================

(scrSetListCursor screen cursor) -> True/Nil
============================================

(scrSetListFilter screen filter) -> True/Nil
============================================

(scrShowAction screen actionID shown) -> True/Nil
=================================================

(scrShowPane screen pane) -> True/Nil
=====================================

(scrShowScreen screenGlobal screen [pane] [data]) -> True/Nil
=============================================================

(scrTranslate screen textID [data]) -> text or Nil
==================================================

(seededRandom seed from to)
===========================

(seededRandom seed list)
========================

(set string value) -> value
===========================

(set@ list-var index value) -> list
===================================

(set@ struct-var key value) -> struct
=====================================

(set@ struct-var struct) -> merged structs
==========================================

(setq variable value)
=====================

(shpCancelOrder ship [orderIndex]) -> True/Nil
==============================================

(shpCancelOrders ship) -> True/Nil
==================================

(shpCanRemoveDevice ship item) -> resultCode
============================================
resultCode
   - ``0``        OK
   - ``1``        Too much cargo to remove cargo hold
   - ``2``        Device not installed
   - ``string``   custom fail reason

(shpConsumeFuel ship fuel [useType]) -> fuelLeft
================================================
useType:
   - ``'consume``
   - ``'drain``

(shpDamageArmor ship armorSegment damageType damage ['noSRSFlash]) -> damage done
=================================================================================

(shpDecontaminate ship) -> True/Nil
===================================

(shpEnhanceItem ship item [mods]) -> True/Nil
=============================================

(shpGetAISetting ship setting)
==============================

(shpGetArmor ship armorSegment) -> item struct
==============================================

(shpGetArmorCount ship) -> number of armor segments
===================================================

(shpGetArmorMaxHitPoints obj item|armorSegment) -> damage to armor segment
==========================================================================

(shpGetClassName class flags) -> class name
===========================================

(shpGetDirection ship) -> angle
===============================

(shpGetDockObj ship) -> dockObj
===============================

(shpGetFuelLeft ship) -> fuel left
==================================

(shpGetFuelNeeded ship item) -> items needed
============================================

(shpGetImageDesc class [rotationAngle]) -> imageDesc
====================================================

(shpGetItemDeviceName ship item) -> device name of item (or -1)
===============================================================

(shpGetMaxSpeed ship) -> max speed in % of lightspeed
=====================================================

(shpGetOrder obj) -> order
==========================

(shpGetOrderCount obj) -> count
===============================

(shpGetOrderDesc obj [orderIndex]) -> orderDesc
===============================================

(shpGetOrderTarget obj) -> obj
==============================

(shpGetShieldDamage ship) -> damage to shields
==============================================

(shpGetShieldItemUNID ship) -> UNID (or Nil)
============================================

(shpGetShieldMaxHitPoints ship) -> max hp of shields
====================================================

(shpInstallArmor ship item armorSegment)
========================================

(shpInstallDevice ship item [deviceSlot])
=========================================

(shpIsBlind ship) -> True/Nil
=============================

(shpIsFuelCompatible ship item) -> True/Nil
===========================================

(shpIsRadiationImmune ship [item])
==================================

(shpMakeRadioactive ship) -> True/Nil
=====================================

(shpOrder ship order [target] [count]) -> True/Nil
==================================================
order:
   - ``'aim``            obj               Aim, but do not fire
   - ``'approach``       obj [dist]        Approach target
   - ``'attack``         obj [time]        Attack target
   - ``'attackArea``     obj dist [time]   Attack around target
   - ``'attackHold``     obj [time]
   - ``'attackNearestEnemy``               Attack nearest enemy
   - ``'attackPlayerOnReturn``             Wait and attack player
   - ``'attackStation``  obj [?]           Attack target station
   - ``'bombard``        obj [time]        Hold and attack target
   - ``'dock``           obj               Dock with target
   - ``'escort``         obj [ang] [dist]  Escort target
   - ``'fireEvent``      obj event         Fire event on target
   - ``'follow``         obj               Follow without defending
   - ``'followPlayerThroughGate``
   - ``'gate``           [obj]             Gate out of system
   - ``'gateOnStationDestroyed``           Flee if station destroyed
   - ``'gateOnThreat``                     Flee if threatened
   - ``'goto``           obj [dist]        Goto target
   - ``'gotoPos``        pos               Goto position
   - ``'guard``          obj               Guard target
   - ``'hold``           [time]            Stay in place
   - ``'holdAndAttack``  obj [time]
   - ``'holdCourse``     course dist       Hold course
   - ``'loot``           obj               Loot target
   - ``'mine``           obj               Mine asteroids [base]
   - ``'navPath``        navID             Follow nav path ID
   - ``'orbit``          obj dist [time]   Orbit target
   - ``'patrol``         obj [dist]        Patrol around target
   - ``'scavenge``                         Scavenge for scraps
   - ``'sendMessage``    obj msg           Send message to target
   - ``'sentry``         obj [time]        Guard target (turrets)
   - ``'tradeRoute``                       Move between stations
   - ``'turnTo``         ang               Turn to face angle
   - ``'wait``           [time]            Wait, do not attack
   - ``'waitForEnemy``   [time]            Wait until enemy in LRS
   - ``'waitForPlayer``                    Wait for player to return
   - ``'waitForTarget``  obj [dist] [time] Wait until target in range
   - ``'waitForThreat``  [time]
   - ``'waitForUndock``  obj [time]        Wait for target to undock
   - ``'wander``                           Wander, avoiding enemies

(shpOrderImmediate ship order [target] [count]) -> True/Nil
===========================================================

(shpRechargeShield ship hpToRecharge) -> True/Nil
=================================================

(shpRefuelFromItem ship item) -> True/Nil
=========================================

(shpRemoveDevice ship item) -> item
===================================

(shpRepairItem ship item) -> True/Nil
=====================================

(shpSetAISetting ship setting value)
====================================
setting:
   - ``'combatStyle``
      = 'advanced
      = 'chase
      = 'flyby
      = 'noRetreat
      = 'standard
      = 'standOff
   - ``'aggressor`` (True/Nil)
   - ``'ascendOnGate`` (True/Nil)
   - ``'flockFormation`` (True/Nil)
   - ``'ignoreShieldsDown`` (True/Nil)
   - ``'noAttackOnThreat`` (True/Nil)
   - ``'noDogfights`` (True/Nil)
   - ``'noFriendlyFire`` (True/Nil)
   - ``'noFriendlyFireCheck`` (True/Nil)
   - ``'noNavPaths`` (True/Nil)
   - ``'noOrderGiver`` (True/Nil)
   - ``'noTargetsOfOpportunity`` (True/Nil)
   - ``'combatSeparation`` {pixels}
   - ``'fireAccuracy`` {percent}
   - ``'fireRangeAdj`` {percent}
   - ``'fireRateAdj`` {value; 10 = normal; 20 = twice as slow}
   - ``'perception`` {value}

(shpSetCommandCode ship code) -> True/Nil
=========================================

(shpSetController ship controller) -> True/Nil
==============================================

(shuffle list) -> shuffled list
===============================

(sort list ['ascending|'descending] [keyIndex]) -> sorted list
==============================================================

(sovGetDisposition sovereignID targetSovereignID) -> disposition of sovereign to target
=======================================================================================
output is one of:
   - ``'enemy``
   - ``'neutral``
   - ``'friend``

(sovGetName sovereignID [flags]) -> name
========================================

(sovMessage sovereignID text) -> True/Nil
=========================================

(sovMessageFromObj sovereignID obj text) -> True/Nil
====================================================

(sovSetDisposition sovereignID targetSovereignID disposition)
=============================================================
disposition:
   0 / 'enemy
   1 / 'neutral
   2 / 'friend

(split string [characters]) -> list
===================================

(sqrt x) -> integer z
=====================

(sqrtn x) -> real z
===================

(staClearFireReconEvent station)
================================

(staClearReconned station)
==========================

(staGetDockedShips station) -> list of docked ships
===================================================

(staGetImageVariant station) -> variant
=======================================

(staGetSubordinates station) -> list of subordinates (e.g., guardians)
======================================================================

(staIsEncountered type) -> True/Nil
===================================

(staIsReconned station) -> True/Nil
===================================

(staSetActive station [True/Nil])
=================================

(staSetFireReconEvent station)
==============================

(staSetImageVariant station variant)
====================================

(staSetShowMapLabel station True/Nil)
=====================================

(strCapitalize string) -> string
================================

(strFind string target) -> pos of target in string (0-based)
============================================================

(struct key1 value1 key2 value2 ...) -> struct
==============================================

(struct (key1 value1) (key2 value2) ..) -> struct
=================================================

(struct { key1:value1 key2:value2 ... } ...) -> struct
======================================================

(struct key1 value1 key2 value2 ...) -> struct
==============================================

(struct (key1 value1) (key2 value2) ..) -> struct
=================================================

(struct { key1:value1 key2:value2 ... } ...) -> struct
======================================================
Same as struct except values of the same key are appended into a list.

(subset list pos [count]) -> list
=================================

(subst string arg1 arg2 ... argn) -> string
===========================================

(subtract x1 x2 ... xn) -> z
============================

(switch [cond1 exp1] ... [condn expn] defaultexp) -> value
==========================================================
Evaluates conditions until one returns non-Nil, then evaluates the corresponding expression

(sysAddEncounterEvent delay target encounterID gate)
====================================================
delay in ticks

(sysAddEncounterEventAtDist delay target encounterID distance)
==============================================================
delay in ticks

(sysAddObjRecurringTimerEvent interval obj event)
=================================================
interval in ticks

(sysAddObjTimerEvent delay obj event)
=====================================
delay in ticks

(sysAddStargateTopology [nodeID] gateID destNodeID destGateID) -> True/Nil
==========================================================================

(sysAddTypeRangeEvent type event options)
=========================================
options:
   - ``'center``            Fire event when target gets close to this point
   - ``'radius``            Within this radius (light-seconds)
   - ``'criteria``          Objects that will trigger. If Nil, player triggers

(sysAddTypeRecurringTimerEvent interval type event)
===================================================
interval in ticks

(sysAddTypeTimerEvent delay type event)
=======================================

(sysAscendObject obj) -> True/Nil
=================================

(sysCalcFireSolution targetPos targetVel speed) -> angle to shoot (Nil, if no solution)
=======================================================================================

(sysCalcStdCombatStrength level) -> standard combat strength for level
======================================================================

(sysCalcTravelDistance speed time) -> distance in light-seconds
===============================================================

(sysCalcTravelTime distance speed) -> time in ticks
===================================================

(sysCancelTimerEvent obj event) -> True/Nil
===========================================

(sysCancelTypeTimerEvent type event) -> True/Nil
================================================

(sysCreateEffect effectID anchorObj pos [rotation]) -> True/Nil
===============================================================

(sysCreateEncounter unid [options]) -> True/Nil
===============================================
options:
   - ``'distance``      Encounter distance (light-seconds), if gate is Nil
   - ``'gate``          Gate to appear at (if Nil, use distance)
   - ``'target``        Target of encounter

(sysCreateFlotsam item|unid pos sovereignID) -> obj
===================================================

(sysCreateHitEffect weaponUNID hitObj hitPos hitDir damageHP) -> True/Nil
=========================================================================

(sysCreateLookup tableName orbit) -> True/Nil
=============================================

(sysCreateMarker name pos sovereignID) -> marker
================================================

(sysCreateShip unid pos sovereignID [options|eventHandler|controller]) -> ship or list
======================================================================================
pos is either a position vector or a space object (gate, station, ship)
options:
   - ``'controller``
   - ``'eventHandler``
   - ``'target`` (for ship tables)
controller:
                     standard
   - ``'auton``            auton
   - ``'ferian``           Ferian
   - ``'fleet``            fleet member
   - ``'fleetcommand``     fleet squad leader
   - ``'gaianprocessor``   Gaian processor

(sysCreateShipwreck unid pos sovereignID) -> shipwreck
======================================================
pos is either a position vector or a space object

(sysCreateStargate unid pos gateID [destNodeID destGateID]) -> obj
==================================================================

(sysCreateStation unid pos [eventHandler]) -> obj
=================================================

(sysCreateTerritory orbit minRadius maxRadius attributes [criteria]) -> True/Nil
================================================================================

(sysCreateWeaponFire weaponID objSource pos dir speed objTarget [options] [bonus%]) -> obj
==========================================================================================
options:
   - ``'detonateNow``
   - ``'fireEffect``
   - ``'soundEffect``

(sysDescendObject objID pos) -> obj
===================================

(sysFindObject source criteria) -> list of objects
==================================================
criteria is a string that must specify one or more of the following categories:
   - ``b``           Include beams
   - ``G``           Include ONLY stargates
   - ``G:xyz;``      Include ONLY stargate with ID 'xyz'
   - ``k``           Include markers
   - ``m``           Include missiles
   - ``s``           Include ships
   - ``t``           Include stations (including planets)
   - ``T``           Include structure-scale stations
   - ``t:xyz;``      Same as "t +xyz;"
   - ``T:xyz;``      Same as "T +xyz;"
   - ``z``           Include the player
and may contain any number of the following options:
   - ``A``           Active objects only (i.e., objects that can attack)
   - ``D:xyz;``      Only objects with data 'xyz'
   - ``E``           Enemies of the source only
   - ``F``           Friends of the source only
   - ``H``           Only objects whose base = source
   - ``I:angle;``    Only objects that intersect line from source
   - ``J``           Same sovereign as source
   - ``J:unid;``     Sovereign unid = unid
   - ``K``           Killed objects only (i.e., objects that cannot attack)
   - ``L:x-y;``      Objects of level x to y.
   - ``M``           Manufactured objects only (i.e., no planets or asteroids)
   - ``N``           Return only the nearest object to the source
   - ``N:nn;``       Return only objects within nn light-seconds
   - ``O:docked;``   Ships that are currently docked at source
   - ``O:escort;``   Ships ordered to escort source
   - ``O:guard;``    Ships ordered to guard source
   - ``P``           Only objects that can be detected (perceived) by source
   - ``R``           Return only the farthest object from the source
   - ``R:nn;``       Return only objects greater than nn light-seconds away
   - ``S:sort;``     Sort order ('d' = distance ascending; 'D' = distance descending
   - ``V``           Include virtual objects
   - ``X``           Only objects whose target is the source
   - ``Y``           Only objects angry at (or enemies of) the source
   - ``Z``           Exclude the player
   - ``+xyz;``       Exclude objects without the given attribute
   -xyz;       Exclude objects with the given attribute
   - ``=n``          Only objects of level n. You can also use >, <, >=, and <=.
   - ``+/-data:xyz;``        Include only/exclude objects with data 'xyz'
   - ``+/-isPlanet:true;``   Include only/exclude planets
   - ``+/-property:xyz;``    Include only/exclude objects with property 'xyz'
   - ``+/-unid:xyz;``        Include only/exclude objects with UNID 'xyz'
Order doesn't matter as long as multi-character items end with semicolons.
If the source is nil, the center of the system is used for position,
and other criteria related to the source are ignored.

(sysFindObjectAtPos source criteria pos [destPos]) -> list of objects
=====================================================================

(sysGetData [nodeID] attrib) -> data
====================================

(sysGetEnvironment pos) -> environmentUNID
==========================================

(sysGetLevel [nodeID]) -> level
===============================

(sysGetLightIntensity pos) -> intensity (0-100)
===============================================

(sysGetName [nodeID]) -> name
=============================

(sysGetNavPathPoint sovereignID objFrom objTo %path) -> vector
==============================================================

(sysGetNode) -> nodeID
======================

(sysGetNodes) -> list of nodeIDs
================================

(sysGetObjectByName [source] name) -> obj
=========================================

(sysGetProperty [nodeID] property) -> value
===========================================
property:
   - ``'level``             The level of the system
   - ``'name``              The name of the system
   - ``'pos``               Node position on map (x y)

(sysGetRandomLocation criteria [options]) -> location or Nil
============================================================
options:
   - ``'objType``           Type (UNID) of object to place (optional)
   - ``'remove``            If True, remove location
location:
   - ``'attribs``           The attributes for the location
   - ``'orbit``             The orbital parameters
   - ``'pos``               The location position

(sysGetStargateDestination [nodeID] gateID) -> (nodeID gateID)
==============================================================

(sysGetStargateDestinationNode [nodeID] gateID) -> nodeID
=========================================================

(sysGetStargates [nodeID]) -> list of gateIDs
=============================================

(sysGetSystemType [nodeID]) -> systemUNID
=========================================

(sysGetTopologyDistance fromID toID) -> distance (or Nil)
=========================================================

(sysGlobals) -> list of global symbols
======================================

(sysHasAttribute [nodeID] attrib) -> True/Nil
=============================================

(sysHitScan source startPos endPos [options]) -> (obj hitPos) or Nil
====================================================================
options
   - ``'excludeWorlds``

(sysHitTest source pos [options]) -> obj or Nil
===============================================
options
   - ``'excludeWorlds``
   - ``'sourceOnly``

(sysIncData [nodeID] attrib increment) -> new value
===================================================

(sysIsKnown [nodeID]) -> True/Nil
=================================

(sysMatches [nodeID] criteria) -> True/Nil
==========================================

(sysOrbit center radius angle [eccentricity rotation]) -> orbit
===============================================================

(sysOrbitPos orbit [options]) -> vector
=======================================
Options parameter is a struct with the following fields:
   - ``'angleOffset:n``              +/- n degrees along orbit arc
   - ``'arcOffset:n``                +/- n light-seconds along orbit arc
   - ``'radiusOffset:n``             +/- n light-seconds radius
For arcOffset and radiusOffset, n may also be a list with the followingformats:
   (list 'gaussian min max)

(sysPlaySound unid [sourceObj]) -> True/Nil
===========================================

(sysPoolUsage) -> list of resource usage
========================================

(sysSetData [nodeID] attrib data) -> data
=========================================

(sysSetEnvironment unid shape options) -> True/Nil
==================================================
shape
   - ``'arc``
      Creates an arc along an orbit. Options must include the
      following fields:
         - ``'orbit``: This is the orbit to use. The arc will be
            centered on the current orbit position (e.g., the
            planet location).
         - ``'length``: The length of the arc (in degrees).
         - ``'width``: The width at the center of the arc (in light-
            seconds).
   - ``'orbital``
      Creates a random environment along the orbit. Options
      must include the following fields:
         - ``'orbit``: This is the orbit to use.
         - ``'width``: The average width of the ring, in light-
            seconds.
   - ``'square``
      Creates a square patch. Options must include the
         following fields:
         - ``'center``: The center position of the patch.
         - ``'height``: The height of the patch (in light-seconds).
         - ``'width``: The width of the patch (in light-seconds).

(sysSetKNown [nodeID] [True/Nil]) -> True/Nil
=============================================

(sysSetPOV obj|vector) -> True/Nil
==================================

(sysSetProperty [nodeID] property value) -> True/Nil
====================================================
property:
   - ``'pos``               Node position on map (x y)

(sysStartTime) -> True/Nil
==========================

(sysStopTime duration except) -> True/Nil
=========================================

(sysStopTime targetList duration) -> True/Nil
=============================================

(sysTicks) -> int
=================

(sysVectorAdd vector vector) -> vector
======================================

(sysVectorAngle vector) -> angle of vector
==========================================

(sysVectorAngle pos1 pos2) -> angle of pos1 relative to pos2
============================================================

(sysVectorDistance vector [vector]) -> distance in light-seconds
================================================================

(sysVectorDivide vector scalar) -> vector
=========================================

(sysVectorMultiply vector scalar) -> vector
===========================================

(sysVectorPixelOffset center x y) -> vector
===========================================
center is either Nil, an object, or a vector

(sysVectorPolarOffset center angle radius) -> vector
====================================================
center is either Nil, an object, or a vector
radius in light-seconds

(sysVectorPolarVelocity angle speed) -> velVector
=================================================

(sysVectorRandom center radius minSeparation [filter]) -> vector
================================================================
center is either Nil, an object, or a vector
radius in light-seconds from center (or a function)
minSeparation is the min distance from other objects (in light-seconds)
filter defines the set of objects to be away from

(sysVectorSpeed velVector) -> % of light speed
==============================================

(sysVectorSubtract vector vector) -> vector
===========================================

(typAddRecurringTimerEvent unid interval event)
===============================================
interval in ticks

(typAddTimerEvent unid delay event)
===================================
delay in ticks

(typCancelTimerEvent unid event) -> True/Nil
============================================

(typCreate unid XML) -> True/Nil
================================

(typDynamicUNID uniqueName) -> UNID
===================================

(typeof item) -> type
=====================
type
   error
   function
   int32
   list
   nil
   primitive
   real
   string
   struct
   true

(typFind criteria) -> list of UNIDs
===================================
criteria
   - ``a``                  AdventureDesc
   - ``b``                  ItemTable
   - ``c``                  EffectType
   - ``d``                  DockScreen
   - ``e``                  SpaceEnvironmentType
   - ``f``                  OverlayType
   - ``h``                  ShipTable
   - ``i``                  ItemType
   - ``m``                  Image
   - ``n``                  MissionType
   - ``p``                  Power
   - ``q``                  SystemTable
   - ``s``                  ShipClass
   - ``t``                  StationType
   - ``u``                  Sound
   - ``v``                  Sovereign
   - ``x``                  Type (generic)
   - ``y``                  SystemType
   - ``z``                  SystemMap
   - ``$``                  EconomyType
   - ``+/-{attrib}``        Require/exclude types with given attribute
   - ``=n;``                Level comparisons (also supports < etc.)

(typFireEvent unid event [data]) -> result of event
===================================================

(typFireObjEvent unid obj event) -> result of event
===================================================

(typGetData unid attrib) -> data
================================

(typGetDataField unid field) -> data
====================================

(typGetProperty unid property) -> value
=======================================
property (all):
   - ``'apiVersion``
   - ``'class``
   - ``'extension``
property (player ships):
   - ``'dockServicesScreen``
   - ``'shipStatusScreen``
   - ``'startingSystem``
property (ships):
   - ``'armorCount``
   - ``'armorHP``
   - ``'armorItems``
   - ``'balanceType``
   - ``'cargoSpace``
   - ``'combatStrength``
   - ``'damage``
   - ``'defaultSovereign``
   - ``'defenseStrength``
   - ``'deviceSlots``
   - ``'deviceSlotsNonWeapons``
   - ``'deviceSlotsWeapons``
   - ``'deviceItems``
   - ``'dodgeRate``
   - ``'driveImage``
   - ``'explosionType``
   - ``'fireAccuracy``
   - ``'fireRangeAdj``
   - ``'fireRateAdj``
   - ``'genericName``
   - ``'hp``
   - ``'hullMass``
   - ``'installDeviceMaxLevel``
   - ``'launcher``
   - ``'launcherUNID``
   - ``'level``
   - ``'maneuver``
   - ``'manufacturer``
   - ``'mass``
   - ``'maxArmorMass``
   - ``'maxCargoSpace``
   - ``'maxRotation``
   - ``'maxSpeed``
   - ``'name``
   - ``'primaryArmor``
   - ``'primaryArmorUNID``
   - ``'primaryWeapon``
   - ``'primaryWeaponRange``
   - ``'primaryWeaponRangeAdj``
   - ``'primaryWeaponUNID``
   - ``'regen``
   - ``'score``
   - ``'size``
   - ``'shield``
   - ``'shieldsUNID``
   - ``'thrust``
   - ``'thrustToWeight``
   - ``'thrusterPower``
   - ``'treasureValue``
   - ``'wreckChance``

(typGetStaticData unid attrib) -> data
======================================

(typGetXML unid) -> xmlElement
==============================

(typHasAttribute unid attrib) -> True/Nil
=========================================

(typHasEvent unid event) -> True/Nil
====================================

(typIncData unid attrib [increment]) -> new value
=================================================

(typMarkImages unid) -> True/Nil
================================

(typMatches unid criteria) -> True/Nil
======================================

(typSetData unid attrib data) -> True/Nil
=========================================

(typTranslate unid textID [data] [default]) -> text (or Nil)
============================================================

(uiCanPlayMusic filename) -> True/Nil
=====================================

(uiGetMusicCatalog) -> list of files
====================================

(uiGetMusicState) -> ('playing filename position length)
========================================================

(uiPlayMusic filename [pos]) -> True/Nil
========================================

(uiQueueSoundtrack soundtrackUNID [options]) -> True/Nil
========================================================

(uiSetSoundtrackMode mode [soundtrackUNID]) -> True/Nil
=======================================================

(uiStopMusic)
=============

(unvFindObject [nodeID] criteria) -> list of entries
====================================================
criteria
   - ``s``                  ShipClass
   - ``t``                  StationType
   - ``+/-{attrib}``        Require/exclude types with given attribute
   - ``+/-unid:{unid}``     Require/exclude types of given unid
   - ``=n;``                Level comparisons (also supports < etc.)
entry
   ({objID} {type} {nodeID} {objName} {objNameFlags})

(unvGetCurrentExtensionUNID) -> UNID
====================================

(unvGetElapsedGameTime [startTick] endTick format) -> result
============================================================
format
   - ``display:``           Elapsed time in display format.
   - ``seconds:``           Elapsed time in game seconds.

(unvGetExtensionData scope attrib) -> data
==========================================

(unvGetRealDate) -> (year month day) GMT
========================================

(unvGetTick) -> time
====================

(unvSetExtensionData scope attrib data) -> True/Nil
===================================================
scope
   - ``'local``
   - ``'serviceExtension``
   - ``'serviceUser``

(unvSetObjectKnown [nodeID] criteria [True/Nil]) -> True/Nil
============================================================

(unvUNID string) -> (unid 'itemtype name) or (unid 'shipclass name)
===================================================================

(v* scalar vec1) -> result of scalar multiplication of scalar and vec1
======================================================================

(v+ vec1 vec2) -> result of vector addition of vec1 and vec2
============================================================

(v-> vec1 indexlist) -> get the elements of vec1 based on indexlist
===================================================================

(v<- vec1 indexlist datalist) -> set the elements of vec1 with datalist based on the indices in indexlist
=========================================================================================================

(v= vec1 vec2) -> compare vec1 and vec2 for equality
====================================================

(v^ vec1 vec2) -> result of element-wise multiplication of vec1 and vec2
========================================================================

(vdot vec1 vec2) -> result of vector dot product of vec1 and vec2
=================================================================

(vecCreate) -> empty vector
===========================

(vector contentlist) -> vector form of contentlist
==================================================

(vfilled scalar shapelist) -> vector filled with scalar's value
===============================================================

(xmlAppendSubElement xml xmlToAdd [index]) -> True/Nil
======================================================

(xmlAppendText xml text [index]) -> True/Nil
============================================

(xmlCreate xml) -> xml
======================

(xmlDeleteSubElement xml index) -> True/Nil
===========================================

(xmlGetAttrib xml attrib) -> value
==================================

(xmlGetAttribList xml) -> list of attribs
=========================================

(xmlGetSubElement xml tag|index) -> xml
=======================================

(xmlGetSubElementCount xml) -> number of sub-elements
=====================================================

(xmlGetSubElementList xml [tag]) -> list of xml
===============================================

(xmlGetTag xml) -> tag
======================

(xmlGetText xml index) -> text (index should usually be 0, i.e. before the first subelement)
============================================================================================

(xmlSetAttrib xml attrib value) -> value
========================================

(xmlSetText xml text [index]) -> True/Nil
=========================================
_FL#2
