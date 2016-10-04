as yet unclassified
testTalentSequenceInitialization
	| x |
	x := Object new.
	x addTalent: taTalentWithASlotInitialized , taAnotherInitializedSlot .

	self assert: x anSlot equals: 55.
	self assert: x anotherSlot equals: 93.