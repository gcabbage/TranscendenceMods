Mission 03 - Escort Ship
========================

This is a basic escort mission - the player will escort one ship from the
Starton to a random stargate.

Full source for the mission is [here](Mission03.xml)

Events
------

#### OnCreate

Mission creation follows the usual pattern: we check for the objects this mission
requires. If we find them then the mission can proceed, otherwise the mission is
cancelled. In this case we need two objects for the mission.

First is the stargate to leave the system. These will always be found in a
normal game, but it does not hurt to check. If we wanted we could add some extra
checks here, for example: make sure the gate is not too close or too far

Second we want a ship to escort. We could just create one, but in this example
we are using one of the ships already docked with the station:

`(shipObj (random (sysFindObject aOwnerObj "sZAO:gateOnThreat;")))`
* `s` Searches for ships
* `Z` Excluding the player
* `A` Only active (i.e. alive) objects
* `O:gateOnThreat;` which have the gateOnThreat order from the station (`aOwnerObj`)

The last criteria means we will get one of the Commonwealth "private craft"
docked at the station and not one of the station defenders.

#### OnAcceptedUndock

This event is called when the player undocks from a station after accepting the
mission - i.e. it will be after the earlier `OnAccepted` event. Here we are
ordering the ship to leave the system and send a message to the player. It is
important to do this after the player has undocked - if we had used the
`OnAccepted` event then the ship could leave while the player was still reading
the mission text.

```xml
<OnAcceptedUndock>
	(block (
		(gateObj (objGetObjByID (msnGetData gSource 'gateID)))
		(shipObj (objGetObjByID (msnGetData gSource 'shipID)))
		)

		; Order the ship to leave
		(shpCancelOrders shipObj)
		(shpOrder shipObj 'gate gateObj)

		; Send a message to the player
		(objSendMessage gPlayerShip shipObj
			(msnTranslate gSource (cat "msgBeginEscort:" (random 1 2)))
			)
		(objSetIdentified shipObj)

		; Make sure the destination is known to the player
		(objSetKnown gateObj)
		)
</OnAcceptedUndock>
```

#### OnObjDestroyed and OnObjEnteredGate
These two events handle mission success (if the ship enters the gate) or failure
(if the ship is destroyed). There are two extra checks in the `OnObjDestroyed`
event:
* Firstly the ship may be destroyed before the player even accepts the mission.
In this case we just destroy the mission.
* Secondly, when a non-player ship enters a stargate it is removed from the
game. This counts as destroying the ship and the `OnObjDestroyed` is called -
therefore we need to check why the ship was destroyed and ignore the gate case.

```xml
<OnObjDestroyed>
	(switch
		; If the ship was destroyed before we started the mission
		; then just cancel the mission
		(and (msnGetProperty gSource 'isOpen)
				(= (objGetID aObjDestroyed) (msnGetData gSource 'shipID)))
			(msnDestroy gSource)

		; Ignore objects which are "destroyed" by entering a gate
		(= aDestroyReason 'enteredStargate)
			Nil

		; Otherwise if the ship is destroyed the mission is a failure
		(= (objGetID aObjDestroyed) (msnGetData gSource 'shipID))
			(msnFailure gSource)
		)
</OnObjDestroyed>

<OnObjEnteredGate>
	(switch
		; Ship has reached gate, so mission is successful
		(= (objGetID aObj) (msnGetData gSource 'shipID))
			(msnSuccess gSource)
		)
</OnObjEnteredGate>
```
