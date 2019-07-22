Mission 01 - Destroy Station
============================

For our first mission we will create a simple destroy enemy station mission.
This one is based on the core [Commonwealth Habitat](https://github.com/kronosaur/TranscendenceDev/blob/master/Transcendence/TransCore/CommonwealthMission01.xml)
mission, but we'll make some minor modifications and make it start from the Trafalgar Pub at a Commonwealth Metropolis.

Full source for the mission is [here](Mission01.xml)

MissionType
-----------
A mission is defined with a `MissionType` element which contains all the code,
data, and language required for a given mission. There are several attributes we
can define, but for now we'll just set four:

```xml
<MissionType UNID="&msTutorial01;"
		name=              "Tutorial 01"
		attributes=        "commonwealth, commonwealthPub"

		level=             "1-5"
		maxAppearing=      "3"

		destroyOnDecline=  "true"
		>
```

* `name` this is used for development purposes, and is not shown to the player.
* `attributes` these are used by various parts of the engine when it looks for
  missions, including the mission assignment code. Including the
  `commonwealthPub` attribute will make the mission appear at the Trafalgar Pub.
  For a full list of attribute locations see
  [Mission and Rumor Locations](http://ministry.kronosaur.com/record.hexm?id=84320)
* `level` indicates which system levels the missions should appear in.
* `maxAppearing` is the maximum number of times the mission can be encountered
  by the player
* `destroyOnDecline` means the engine will delete the mission if the player
  declines it.

Language
--------
The text used to describe a mission and to brief and debrief the player is
contained in Language elements in the mission type. There are several common
language IDs which the engine will search for, but you are free to define others
for your own purposes.

Used by the mission computer:
* `Name` - the short name for the mission
* `Summary` - brief description of the objective. Typically includes the system
  the mission was offered in and the payment.

Used when the player is first offered a mission (i.e. in Meeting Hall etc.)
* `Intro` - text shown the first time the player hears about the mission
* `Briefing` - text shown every time the player asks about the mission (after intro)
* `AcceptLabel` - optional (default is "Accept")
* `DeclineLabel` - optional (default is "Decline")
* `AcceptReply` - shown if the player accepts the mission.
* `DeclineReply` - shown if the player declines the mission.
* `InProgress` - shown if the player returns while the mission is in progess.

Note - there is a further optional `FirstIntro` ID. If this is present it will be
shown the first time the player asks about the mission instead of `Intro`, which
will instead be shown on all subsequent occasions

Used when the player has completed the mission:
* `SuccessDebrief` used to debrief a successful mission.
* `FailureDebrief` used to debrief a failed mission.

In many cases you will need to write short code blocks to generate appropriate
text. Following the [Language Element Guidelines](http://ministry.kronosaur.com/record.hexm?id=72242)
it is best to separate the code from actual text by making use of replaceable
parameters. Some examples from the tutorial mission are shown below:

#### Replaceable Parameters
For the `Briefing` we want to include the name of the target and payment offered
as these are not standard variables we need to specify the parameters ourselves.
We do this with a simple call to `msnTranslate` adding the parameters we need.
```xml
<Text id="Briefing">
	(msnTranslate gSource 'textBriefing {
		payment: (fmtCurrency 'credit (msnGetData gSource 'reward))
		})
</Text>
<Text id="textBriefing">

	"Hey - you're a merc aren't you? I'll pay you %payment% to kill
	those bastards! Do we have a deal?"

</Text>
```


Events
------

For the full list see the [Reference Mission](https://github.com/kronosaur/TranscendenceDev/blob/master/Transcendence/TransCore/CommonwealthMission01.xml)

#### OnCreate
This is called when the mission object is created and added to the list of
available missions (one of which will be offered to the player). You can do
basic mission setup in this event - for example selecting which target the
player should destroy. But remember the mission is not necessarily started or
accepted at this point.

It is also possible to call `msnDestroy` to abort creation of the mission inside
this event. This is done here if there are no valid targets for the player to
destroy.

```xml
<OnCreate>
	(block (
		(targetObj (sysFindObject aOwnerObj "TAENN:450 +populated; -uncharted; -questTarget;"))
		)
		(switch
			(not targetObj)
				(msnDestroy gSource)

			(block Nil
				(msnSetData gSource 'targetID (objGetID targetObj))
				(msnSetData gSource 'enemy (objGetProperty targetObj 'sovereign))

				(msnSetData gSource 'reward 300)

				(msnRegisterForEvents gSource targetObj)
				)
			)
		)
</OnCreate>
```

#### OnAccepted
The `<OnAccepted>` event is called when the player accepts the mission, in this
case all we need to do is make sure the target is known to the player. Otherwise
it will likely be shown as and "Unknown Target" until the player is in range:
```xml
<OnAccepted>
	(objSetKnown (objGetObjByID (msnGetData gSource 'targetID)))
</OnAccepted>
```

#### OnSetPlayerTarget
This event is called at various points to allow the mission to set ship orders
for the player. The event is called when the player accepts a mission, enters a
system, or uses the Mission Journal to show the target.
```xml
<OnSetPlayerTarget>
	(rpgSetTarget gSource aReason (objGetObjByID (msnGetData gSource 'targetID)))
</OnSetPlayerTarget>
```

#### OnObjDestroyed
This is a notification event - called when a registered object is destroyed. In
the `<OnCreate>` event we registered for events from the target so we would know
when it is destroyed.

Here we check which object has been destroyed - if it is the mission target then
the player has successed, so we call `msnSuccess`
```xml
<OnObjDestroyed>
	(switch
		(= (objGetID aObjDestroyed) (msnGetData gSource 'targetID))
			(msnSuccess gSource)
		)
</OnObjDestroyed>
```

#### OnReward
The `<OnReward>` event is triggered as part of the mission debrief screens.
Typically we want to call `rpgMissionRewardPayment` here to pay the player.
```xml
<OnReward>
	(rpgMissionRewardPayment (msnGetData gSource 'reward))
</OnReward>
```

Further Work
------------
Here are a few ideas for improving this mission:
* Currently the reward is fixed. Instead we could calculate a reward based on
the system or target level.
* Check if the player is responsible for destroying the target. Perhaps disaply
a different message if the target is killed by someone else?
* Add a way the player can fail the mission. This could be a time limit or if
the player is killed (though they player would need to die with insurance in
order to meet this condition!)
* Customize the mission text depending on the enemy. There could be different
intro / briefing text as done in the [Commonwealth Habitat](https://github.com/kronosaur/TranscendenceDev/blob/master/Transcendence/TransCore/CommonwealthMission01.xml) mission.
