Mission 02 - Message Delivery
=============================

This mission will be a very simple delivery mission - take a data ROM from the
Starton to a random friendly station. We do this by using the `deliveryMission`
attribute. This attribute makes it easy to display custom dockscreens at your
target station.

Full source for the mission is [here](Mission02.xml)

The `MissionType` element for our new mission is below. There are two main
changes from our first mission:
1. Added `deliveryMission` to the mission attributes list.
2. Set `noDebrief` to true - when this is set the player does not have to return
to the original station for the success / failure text, instead the mission is
completed as soon as `msnSuccess` or `msnFailure` are called

```xml
<MissionType UNID="&msTutorial02;"
		name=               "Tutorial 02"
		attributes=         "commonwealth, commonwealthPub, deliveryMission"

		level=              "1-5"
		maxAppearing=       "3"

		destroyOnDecline=   "true"
		noDebrief=          "true"
		>
```


`deliveryMission`
-----------------

`deliveryMission` is a special attribute we can use to display custom dockscreens
at a target station. This is typically used for a delivery (or collection) style
mission; however, it is not actually necessary for the player to be performing a
delivery in order to use this feature. Every time the player docks with any
station the engine will:
* search for any active (not completed) missions with `deliveryMission` attribute
* check if the mission data `destID` matches the ID of the docked station
* attempt to display the `&dsRPGDeliveryMission;` dock screen (priority 4)

If the dock screen is displayed (customs etc. will have higher priority and may
prevent the player from seeing the mission screen), then the engine will call
the `<OnDeliveryMissionCompleted>` event to update mission state and generate
dock screen text to display to the player.


Events
------

#### OnCreate

Our mission creation is pretty straight forward. We search for suitable friendly
stations for the delivery - if we find one then save it in the `destID` mission
data

#### OnAccepted

The `<OnAccepted>` event is called when the player accepts the mission, we can
use this event to create and add the data ROM to the player's cargo hold.
```xml
<OnAccepted>
	(block (
		(destObj (objGetObjByID (msnGetData gSource 'destID)))
		; Create a dataROM with the message
		(theRom
			(itmSetData
				(itmCreate &itDataROM; 1)
				'Text
				(msnTranslate gSource 'textMessage)
				)
			)
		)
		; Remember the item so we can check that the player delivers it
		(msnSetData gSource 'message theRom)
		(objAddItem gPlayerShip theRom)

		; Make sure the destination is known to the player
		(objSetKnown destObj)
		)
</OnAccepted>
```

#### OnDeliveryMissionCompleted
This event is called by the engine when it is about to display the
`&dsRPGDeliveryMission;` dock screen. This is where we determine if the mission
was a success or not and display the appropriate text. As we have set `noDebrief`
for this mission, the text displayed here replaces the usual Success / Failure
Debrief messages.
```xml
<OnDeliveryMissionCompleted>
	(block (
		(theRom (msnGetData gSource 'message))
		)

		(switch
			; If the player has the ROM then remove it and succeed
			; the mission.
			(objHasItem gPlayerShip theRom)
				(block Nil
					(objRemoveItem gPlayerShip theRom)
					(msnSuccess gSource)
					(msnTranslate gSource 'textSuccessDebrief)
					)

			; Otherwise if the player has lost it then mark the
			; mission as failed.
			(block Nil
				(msnFailure gSource)
				(msnTranslate gSource 'textFailureDebrief)
				)
			)
		)
</OnDeliveryMissionCompleted>
```

For simple missions like this this event should call either `msnSuccess` or
`msnFailure`. However, for more complex cases you will need to clear (or change)
the `destID` mission data - otherwise the engine will keep attempting to show
the same dock screen.
