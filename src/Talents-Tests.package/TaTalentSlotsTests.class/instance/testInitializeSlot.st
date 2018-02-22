tests
testInitializeSlot
	| x |
	x := Object new.
	x addTalent: taTalentWithASlotInitialized.

	self assert: x anSlot equals: 55.